#include <config/xf-config.h>

#include <cassert>
#include "mcu/mcu.h"
#include "critical/critical.h"
#include "xf/xf.h"
#include "xf/interface/timeoutmanager.h"
#include "c-wrapper-functions.h"

using interface::XFTimeoutManager;

/**
 * SysTick_Handler() function is already implemented in the STM32CubeMX generated
 * code (see Src/stm32fxxx_it.c file). Therefore, we must provide here a function
 * which can be explicitly called in SysTick_Handler() to tick the XF.
 */
void XF_tick()
{
	bInISR = true;								// Tell critical section we are in an ISR
	if (XF::isRunning())                        // Call tick only if XF is running
	{
	    XFTimeoutManager::getInstance()->tick();    // Call framework hook tick function
	}
	bInISR = false;
}

/**
 * C function wrapping getTickInterval() method of XFTimeoutManager.
 */
int32_t XF_tickIntervalInMilliseconds()
{
    return XFTimeoutManager::getInstance()->getTickInterval();
}

bool XF_isRunning()
{
    return XF::isRunning();
}
