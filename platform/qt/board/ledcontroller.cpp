#include <QtGlobal>
#include "config/ledcontroller-config.h"
#if (LEDCONTROLLER_TRACE_ENABLE != 0)
    #include "trace/trace.h"
#endif // LEDCONTROLLER_TRACE_ENABLE
#include "ledcontroller.h"

LedController * LedController::pInstance_ = nullptr;

LedController::LedController()
{
    assert(!pInstance_);	// Only one instance of this class allowed!
    pInstance_ = this;

    // Initialize the method array with the right methods.
    ledOperation_[0] = &LedController::setLed0;
    ledOperation_[1] = &LedController::setLed1;
    ledOperation_[2] = &LedController::setLed2;
    ledOperation_[3] = &LedController::setLed3;
}

LedController::~LedController()
{
}

void LedController::setLed(uint8_t index, bool bOn)
{
    setLeds(0x01 << index, bOn);
}

void LedController::setLeds(uint8_t ledMask, bool bOn)
{
    uint8_t mask = 0x01;

    for (uint8_t i = 0; i < ledCount(); i++, mask <<= 1)
    {
        if ((ledMask & mask) == mask && ledOperation_[i])
        {
            (this->*ledOperation_[i])(bOn);
        }
    }
}

void LedController::setLed0(bool bOn /* = true */)
{
    Q_UNUSED(bOn);

#if (LEDCONTROLLER_TRACE_ENABLE != 0)
    Trace::out(" LED0: %s", bOn ? "on" : "off");
#endif // LEDCONTROLLER_TRACE_ENABLE
}

void LedController::setLed1(bool bOn /* = true */)
{
    Q_UNUSED(bOn);

#if (LEDCONTROLLER_TRACE_ENABLE != 0)
        Trace::out("  LED1: %s", bOn ? "on" : "off");
#endif // LEDCONTROLLER_TRACE_ENABLE
}

void LedController::setLed2(bool bOn /* = true */)
{
    Q_UNUSED(bOn);

#if (LEDCONTROLLER_TRACE_ENABLE != 0)
        Trace::out("   LED2: %s", bOn ? "on" : "off");
#endif // LEDCONTROLLER_TRACE_ENABLE
}

void LedController::setLed3(bool bOn /* = true */)
{
    Q_UNUSED(bOn);

#if (LEDCONTROLLER_TRACE_ENABLE != 0)
        Trace::out("    LED3: %s", bOn ? "on" : "off");
#endif // LEDCONTROLLER_TRACE_ENABLE
}
