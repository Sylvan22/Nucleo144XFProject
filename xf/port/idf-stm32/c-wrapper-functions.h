#ifndef XF_C_WRAPPER_FUNCTIONS_H
#define XF_C_WRAPPER_FUNCTIONS_H

#include <stdint.h>
#include <stdbool.h>

/** @ingroup port_idf_stm32
 *  @{
 */

/**
 * Following functions need to have "C" signature as they can be
 * called in C (and C++).
 */

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief Must be called regularly in a timer ISR or software timer callback.
 *
 * The XF_tick() function must be called with the same interval given to the
 * TimeoutManager (tickInterval).
 */
void XF_tick();

/**
 * C function returning the tick interval in milliseconds with which the XF_tick()
 * function should be called. This is the parameter given to the XF::init() method
 * and may be different for each project.
 */
int32_t XF_tickIntervalInMilliseconds();

/**
 * C function wrapping to XF::isRunning() method.
 */
bool XF_isRunning();

#ifdef __cplusplus
}
#endif
/** @} */ // end of port_idf_stm32 group
#endif // XF_C_WRAPPER_FUNCTIONS_H
