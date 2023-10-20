#include "xf/initialevent.h"

// TODO: Implement code for XFInitialEvent class

XFInitialEvent::XFInitialEvent()
    :XFEvent(Initial)
{

}

bool XFInitialEvent::deleteAfterConsume() const
{
    return false;
}
