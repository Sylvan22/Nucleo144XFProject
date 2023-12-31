#ifndef XF_TIMEOUT_H
#define XF_TIMEOUT_H

#include "xf/event.h"

namespace interface {
    class XFTimeoutManager;
}

/** @ingroup xf_core
 *  @{
 */

/**
 * @brief Used by the TimeoutManager to create and handle a timeout.
 *
 * Timeouts are created automatically by the TimeoutManager when
 * scheduling a timeout. After expiration they are queued to the event queue
 * and afterwards dispatched to the corresonding behavior.
 *
 * A timeout can be identified by checking against #Timeout using
 * the `getEventType()` method.
 *
 * XFTimeout is inheriting from XFEvent, so every timeout is
 * also an event.
 */
class XFTimeout : public XFEvent
{
    friend class interface::XFTimeoutManager;

public:
    /**
     * Constructor of the class.
     * \param id The id given by the behavioral class to uniquely identifying the timeout
     * \param interval The interval in milliseconds the timeout expires
     * \param pBehavior Pointer to behavioral class to which the timeout belongs
     */
    XFTimeout(int id, int interval, interface::XFBehavior * pBehavior = nullptr);

    /**
     * Operator checks if #pBehavior_ and #id_ are equal and returns
     * true if so. All other attributes get no attention.
     */
    bool operator ==(const XFTimeout & timeout) const;

    bool deleteAfterConsume() const override;                                                       ///< Tells the dispatcher if the event must be deleted or not.

    inline int getInterval() const { return interval_; }                                            ///< Returns the timeout interval in milliseconds.
    inline void setRelTicks(int relTicks) { relTicks_ = relTicks; }                                 ///< Sets remaining ticks.
    inline int getRelTicks() const { return relTicks_; }                                            ///< Returns remaining ticks.
    inline void substractFromRelTicks(int ticksToSubstract) { relTicks_ -= ticksToSubstract; }      ///< Substracts `ticksToSubstract` from remaining ticks.
    inline void addToRelTicks(int ticksToAdd) { relTicks_ += ticksToAdd; }                          ///< Adds `ticksToAdd` to remaining ticks.

protected:
    const int interval_;		///< Timeout interval in milliseconds.
    int relTicks_;              ///< Used by the TimeoutManager to calculate remaining time (in milliseconds). Can get negative!
};

/** @} */ // end of xf_core group
#endif // XF_TIMEOUT_H
