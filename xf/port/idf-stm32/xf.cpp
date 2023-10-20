#include <cassert>
#include <config/xf-config.h>

#if (USE_XF_IDF_STM32_XF_CLASS != 0)

#include "xf/interface/timeoutmanager.h"
#include "xf/interface/dispatcher.h"
#include "xf/xf.h"

using interface::XFTimeoutManager;
// TODO: Implement code for XF class
bool XF::isRunning_=false;
bool XF::isInitialized_=false;

void XF_initialize(int timeInterval)
{
    XF::initialize(timeInterval);
}

void XF_exec()
{
    XF::exec();
}

void XF_execOnce()
{
    XF::execOnce();
}

void XF::initialize(int timeInterval, int argc, char *argv[]) {
	XF::isInitialized_=true;
	interface::XFTimeoutManager::getInstance()->initialize(timeInterval);
}

int XF::exec() {
	XF::isRunning_ =true;
	return interface::XFDispatcher::getInstance()->execute();
}

int XF::execOnce() {
	XF::isRunning_ =true;
	interface::XFDispatcher::getInstance()->executeOnce();
	return 0;
}

bool XF::isRunning() {
	return XF::isRunning_;
}



#endif // USE_XF_IDF_STM32_XF_CLASS
