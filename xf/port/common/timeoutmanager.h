#ifndef XF_COMMON_TIMEOUTMANAGER_H
#define XF_COMMON_TIMEOUTMANAGER_H

#include <list>
#include <config/xf-config.h>

#if (USE_XF_COMMON_TIMEOUTMANAGER_CLASS != 0)

#include "xf/interface/timeoutmanager.h"
#include "xf/timeout.h"
#include "xf/interface/mutex.h"

/** @ingroup port_common
 *  @{
 */

/**
 * @brief Default implementation of the XF TimeoutManager
 */
class XFTimeoutManager : public interface::XFTimeoutManager
{
    friend interface::XFTimeoutManager * interface::XFTimeoutManager::getInstance();
public:
    ~XFTimeoutManager() override;

    void start(std::function<void(uint32_t)> startTimeoutManagerTimer = nullptr) override;                   ///< See interface::XFTimeoutManager
    void scheduleTimeout(int32_t timeoutId, int32_t interval, interface::XFBehavior * pBehavior) override;   ///< See interface::XFTimeoutManager
    void unscheduleTimeout(int32_t timeoutId, interface::XFBehavior * pBehavior) override;                   ///< See interface::XFTimeoutManager
    void tick() override;                                                                                    ///< See interface::XFTimeoutManager

protected:
    XFTimeoutManager();
    void addTimeout(XFTimeout * pNewTimeout) override;      ///< Adds the timeout to #timeouts_.

    /**
     * Returns the timeout back to the queue of the dispatcher executing
     * the behavioral instance.
     */
    void returnTimeout(XFTimeout * pTimeout);	///< Returns timeout back to behavioral class.

protected:
    typedef std::list<XFTimeout *> TimeoutList;		///< Type used for the _timeouts property.

    TimeoutList timeouts_;							///< Container holding timeouts to manage.

    interface::XFMutex * pMutex_;					///< Mutex to protect access to TimeoutList.
};

/** @} */ // end of port_common group
#endif // USE_XF_COMMON_TIMEOUTMANAGER_CLASS
#endif // XF_COMMON_TIMEOUTMANAGER_H
