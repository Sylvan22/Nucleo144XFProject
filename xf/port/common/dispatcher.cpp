#include <cassert>
#include <config/xf-config.h>

#if (USE_XF_COMMON_DISPATCHER_CLASS != 0)
#if defined(XF_TRACE_EVENT_PUSH_POP) && (XF_TRACE_EVENT_PUSH_POP != 0)
    #include "trace/trace.h"
#endif // XF_TRACE_EVENT_PUSH_POP
#include "xf/interface/timeoutmanager.h"
#include "xf/interface/behavior.h"
#include "xf/interface/mutex.h"
#include "dispatcher.h"

#include "trace/trace.h"

using interface::XFTimeoutManager;      // Allows to use expression 'XFTimeoutManager' instead of 'interface::XFTimeoutManager'.
using interface::XFBehavior;            // Expression XFBehavior used in code below is in fact the XFBehavior interface class.
using Mutex = interface::XFMutex;       // Rename XFMutex interface class to Mutex for easier use.

// Implementation of the getInstance() method of the 'interface::XFDispatcher' class.
//
// Note: The implementation is done here because only in this file the real XFDispatcher
//       class is known (port specific class). An instance of the XFDispatcher class is
//       returned by the 'interface::XFDispatcher' class.


interface::XFDispatcher * interface::XFDispatcher::getInstance()
{
    static ::XFDispatcher dispatcher;
    return &dispatcher;
}

// TODO: Implement code for XFDispatcher class

#endif // USE_XF_COMMON_DISPATCHER_CLASS

XFDispatcher::~XFDispatcher()
{

}

void XFDispatcher::pushEvent(XFEvent *pEvent)
{
    //TODO: search for the isInISR=> how we know that we are in ISR or not
    //Trace::out("Push event");
    this->events_.push(pEvent,false);//push the event in the queue
}

void XFDispatcher::scheduleTimeout(int timeoutId, int interval, interface::XFBehavior *pBehavior)
{
    XFTimeoutManager::getInstance()->scheduleTimeout(timeoutId,interval,pBehavior);//add the timeout in timeoutManager, call timeoutManager with getInstance
}
void XFDispatcher::unscheduleTimeout(int timeoutId, interface::XFBehavior *pBehavior)
{
   XFTimeoutManager::getInstance()->unscheduleTimeout(timeoutId,pBehavior);//call timoutManager with getInstance to remove the timeout
}

// TODO: pop an event and execute it
void XFDispatcher::executeOnce()
{
    if(!this->events_.empty()){// if there is an event in the queue   
        dispatchEvent(this->events_.front());// dispatch the event
        this->events_.pop();// pop the event
    }
}


int XFDispatcher::execute(const void *param)
{
    while(true){
        this->executeOnce();
    }
}

XFDispatcher::XFDispatcher()
{

}


void XFDispatcher::dispatchEvent(const XFEvent *pEvent) const
{
    XFBehavior::TerminateBehavior terminateBehavior;
    terminateBehavior = pEvent->getBehavior()->process(pEvent); // call the process method

    if(terminateBehavior){// if we should delete the behavior
        delete (pEvent->getBehavior());
    }

}


