#include "xf/customevent.h"

// TODO: Implement code for XFCustomEvent class

XFCustomEvent::XFCustomEvent(int id, interface::XFBehavior *pBehavior)
    :XFEvent(Event,id)
{
    this->setBehavior(pBehavior);
}
