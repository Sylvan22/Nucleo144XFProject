#ifndef XF_IDF_STM32_MUTEX_H
#define XF_IDF_STM32_MUTEX_H

#include <config/xf-config.h>

#if (USE_XF_IDF_STM32_MUTEX_CLASS != 0)

#include <stdint.h>
#include "xf/interface/mutex.h"

/** @ingroup port_idf_stm32
 *  @{
 */

/**
 * @brief Default IDF implementation XFMutex interface.
 *
 * This class uses `enterCritical()` and `exitCritical()`
 * functions which must be provided by the platform.
 * Therefore, this mutex implementation can be used
 * in Embedded Systems without OS.
 */
class XFMutex : public interface::XFMutex
{
    friend class interface::XFMutex;
    friend class XFEventQueue;
public:

	void lock() override;
	void unlock() override;

	bool tryLock(int32_t timeout = 0) override;

protected:
    XFMutex() = default;     ///< Do not allow to directly create an object of this class. Call interface::XFMutex::create() instead.
};

/** @} */ // end of port_idf_stm32 group
#endif // USE_XF_IDF_STM32_MUTEX_CLASS
#endif // XF_IDF_STM32_MUTEX_H
