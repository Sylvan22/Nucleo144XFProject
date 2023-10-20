#include <cassert>
#include "xf/timeout.h"
#include "xf/initialevent.h"
#include "xf/behavior.h"
#include "trace/trace.h"
// TODO: Implement code for XFBehavior class  

XFBehavior::XFBehavior()
{
    this->deleteOnTerminate_ = false; // false by default
}

XFBehavior::~XFBehavior()
{
    if(this->deleteOnTerminate()){
        delete this;
    }
}

void XFBehavior::startBehavior()
{
    XFInitialEvent* evInit = new XFInitialEvent();
    this->pushEvent(evInit);//send an init event
}

void XFBehavior::pushEvent(XFEvent *pEvent){
    /*
    if(pEvent->getEventType()== XFEvent::DefaultTransition||pEvent->getEventType()== XFEvent::Initial){
        pEvent->setBehavior(this);
    }*/
    if(pEvent->getBehavior()==nullptr){
        pEvent->setBehavior(this);
    }
    getDispatcher()->pushEvent(pEvent);// push event further
}

bool XFBehavior::deleteOnTerminate() const
{
    return this->deleteOnTerminate_;
}

void XFBehavior::setDeleteOnTerminate(bool deleteBehaviour)
{
    this->deleteOnTerminate_ = deleteBehaviour;
}

const XFEvent *XFBehavior::getCurrentEvent() const
{
    return this->pCurrentEvent_;
}

interface::XFDispatcher *XFBehavior::getDispatcher(){
    return interface::XFDispatcher::getInstance();
}

const XFTimeout *XFBehavior::getCurrentTimeout()
{
    if(this->pCurrentEvent_->getEventType() == XFEvent::Timeout){
    return (XFTimeout*)this->pCurrentEvent_;
    }
    return nullptr;
}

void XFBehavior::setCurrentEvent(const XFEvent *pEvent)
{
    this->pCurrentEvent_= pEvent;
}

XFBehavior::TerminateBehavior XFBehavior::process(const XFEvent *pEvent)
{
    XFBehavior::TerminateBehavior terminateBehavior = false;
    XFEventStatus status;
    this->setCurrentEvent(pEvent);
    status = this->processEvent();
    if(status == XFEventStatus::Consumed && pEvent->deleteAfterConsume()){
        delete pEvent;
    }
    if(status == XFEventStatus::Terminate && this->deleteOnTerminate()){
        terminateBehavior = true;

    }
    return terminateBehavior;
}
