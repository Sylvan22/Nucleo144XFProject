#include "xf/timeout.h"
#include "xf/interface/timeoutmanager.h"
// TODO: Implement code for XFTimeout class

XFTimeout::XFTimeout(int id, int interval, interface::XFBehavior *pBehavior)
    :XFEvent(Timeout,id),interval_(interval)
{
    this->setBehavior(pBehavior);
}

bool XFTimeout::deleteAfterConsume() const
{
    return false;
}
