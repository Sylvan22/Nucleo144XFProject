#ifndef XF_IDF_STM32_EVENT_QUEUE_H
#define XF_IDF_STM32_EVENT_QUEUE_H
#ifdef __cplusplus

#include "config/xf-config.h"

#if (USE_XF_IDF_STM32_EVENT_QUEUE_CLASS != 0)

#include <stdint.h>
#include <queue>
#include "xf/interface/eventqueue.h"
#include "mutex.h"

/** @ingroup port_idf_stm32
 *  @{
 */

/**
 * @brief Default implementation of the event queue using a `std::queue` as container.
 *
 * This class does not provide a blocking pend() method. This means that this class
 * can be used in an IDF, but is not the right choice for a RTOS based XF.
 */
class XFEventQueue : public interface::XFEventQueue
{
    using Mutex = XFMutex;
public:
    XFEventQueue();
    virtual ~XFEventQueue();

    // XFEventQueue interface implementation
public:
    bool empty() const override;										///< Returns true if no event is in the queue.
    bool push(const XFEvent * pEvent, bool fromISR = false) override;	///< Pushes the given event onto the queue.
    const XFEvent * front() override;                    				///< Returns pointer to next event to pop.
    void pop() override;                                 				///< Pops the next event from the queue.
    bool pend() override;                                               ///< Wait for the next event to arrive. Returns true if an event is in the queue.

protected:
    typedef std::queue<const XFEvent *> EventQueue;						///< Type of the event queue.

    Mutex mutex_;                                       				///< Mutex protecting access to queue_.
    EventQueue queue_;													///< Internal queue holding the events.
};

/** @} */ // end of port_idf_stm32 group
#endif // USE_XF_IDF_STM32_EVENT_QUEUE_CLASS
#endif // __cplusplus
#endif // XF_IDF_STM32_EVENT_QUEUE_H
