#ifndef XF_INTERFACE_DISPATCHER_H
#define XF_INTERFACE_DISPATCHER_H

#include "xf/event.h"

class XF;
class DispatcherThread;

namespace interface {

class XFBehavior;

/**
 * @brief Interface for the XF dispatcher providing the event processing loop.
 *
 * Depending on the implementation the dispatcher is executed by
 * an internal thread. It is up to the port implementation how
 * the class behaves.
 *
 * The dispatcher should at least provide a queue to hold events
 * and an algorithm (typically in execute()) that dispatches the queued
 * events to the associated behavior (eq. state machine, activity).
 *
 * There may exist multiple dispatchers. Each behavior needs to be
 * bound to a dispatcher. One dispatcher may serve different behaviors.
 *
 */
class XFDispatcher
{
    friend class ::XF;
    friend class ::DispatcherThread;

public:
    virtual ~XFDispatcher() = default;

    static XFDispatcher * getInstance();	///< Returns a pointer to the single instance of XFDispatcher.

    virtual void pushEvent(XFEvent * pEvent) = 0;   ///< Adds event to the events queue.
    /**
     * @brief Adds a new timeout to be handled.
     *
     * The dispatcher will forward the timeout information to the timeout
     * manager which is responsible to handle all timeouts.
     */
    virtual void scheduleTimeout(int timeoutId, int interval, interface::XFBehavior * pBehavior) = 0;

    /**
     * @brief Removes all timeouts corresponding the given parameters.
     */
    virtual void unscheduleTimeout(int timeoutId, interface::XFBehavior * pBehavior) = 0;

protected:
    /**
     * Constructor is protected because only method createInstance()
     * should be called to create Dispatcher instances
     */
    XFDispatcher() = default;

    /**
     * @brief Main loop of the dispatcher. Implements event loop processing.
     */
    virtual int execute(const void * param = nullptr) = 0;

    /**
     * @brief Executes once the dispatcher.
     *
     * Usually, this method must not be called explicitly. The
     * standard way to call the dispatcher is to call execute().
     *
     * This method can be called by the Thread (or main function) if it
     * must perform concurrent (non-XF related) tasks in addition.
     *
     * When using this method start() must not be called.
     */
    virtual void executeOnce() = 0;

    /**
     * @brief Dispatches the event to the corresponding behavioral part.
     *
     * For example the state machine which should process the event.
     *
     * \param pEvent The event to dispatch
     */
    virtual void dispatchEvent(const XFEvent * pEvent) const = 0;
};

} // namespace interface
#endif // XF_INTERFACE_DISPATCHER_H
