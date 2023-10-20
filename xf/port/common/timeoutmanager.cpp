
#include <config/xf-config.h>

#if (USE_XF_COMMON_TIMEOUTMANAGER_CLASS != 0)

#include <cassert>
#include "xf/interface/behavior.h"
#include "xf/interface/mutex.h"
#include "timeoutmanager.h"
#include "common/dispatcher.h"
#include "trace/trace.h"
using Mutex = interface::XFMutex;       // Rename XFMutex interface class to Mutex for easier use.

// Implementation of the getInstance() method of the 'interface::XFTimeoutManager' class.
//
// Note: The implementation is done here because only in this file the real XFTimeoutManager
//       class is known (port specific class). An instance of the XFTimeoutManager class is
//       returned by the 'interface::XFTimeoutManager' class.


interface::XFTimeoutManager * interface::XFTimeoutManager::getInstance()
{
    static ::XFTimeoutManager timeoutManager;
    return &timeoutManager;
}

#endif // USE_XF_COMMON_TIMEOUTMANAGER_CLASS


XFTimeoutManager::~XFTimeoutManager()
{

}

void XFTimeoutManager::start(std::function<void (uint32_t)> startTimeoutManagerTimer)
{
    startTimeoutManagerTimer(this->tickInterval_);
}

// add a timeout in the list with the target to reach when the event is done
void XFTimeoutManager::scheduleTimeout(int32_t timeoutId, int32_t interval, interface::XFBehavior *pBehavior)
{
    XFTimeout * timeout = new XFTimeout(timeoutId,interval,pBehavior);// create a new timeout
    timeout->setRelTicks(interval/this->getTickInterval());// set the ticks
    addTimeout(timeout);//push it in the list
}

void XFTimeoutManager::unscheduleTimeout(int32_t timeoutId, interface::XFBehavior *pBehavior)
{
    this->pMutex_->lock();
    TimeoutList::iterator it;
    for(it = this->timeouts_.begin();it != this->timeouts_.end();it++){
        if((*it)->getId()== timeoutId){
            it = this->timeouts_.erase(it);// we remove the concerned timeout
            break;
        }
    }
    this->pMutex_->unlock();
}

void XFTimeoutManager::tick()
{
    this->pMutex_->lock();// lock mutex

    /*
    if(!this->timeouts_.empty()){// if there is something in the list
        TimeoutList::iterator it;
        for(it = this->timeouts_.begin();it != this->timeouts_.end();it++){
            if((*it)->getRelTicks() > 0){
                (*it)->substractFromRelTicks(1);}// we substract one tick if relTick is not 0
            else{
                returnTimeout((*it));// else we push the event
                it = this->timeouts_.erase(it);// and we delete the timeout from the list
                it--;
            }
        }
    }*/

    if(!this->timeouts_.empty()){// if there is something in the list
        TimeoutList::iterator it = this->timeouts_.begin();
        if((*it)->getRelTicks() > 0){
            (*it)->substractFromRelTicks(1);}// we substract one tick if relTick is not 0
        else{
            while(it!=this->timeouts_.end() && (*it)->getRelTicks()== 0 ){
                returnTimeout((*it));// we push the event
                it = this->timeouts_.erase(it);// and we delete the timeout from the list
            }
        }

    }

    this->pMutex_->unlock();// unlock mutex
}

XFTimeoutManager::XFTimeoutManager()
{
    this->pMutex_ = interface::XFMutex::create();
}

void XFTimeoutManager::addTimeout(XFTimeout *pNewTimeout)
{

    bool timeoutInserted = false; // flag used to know if we have inserted the timeout in the list
    this->pMutex_->lock();
    //this->timeouts_.push_back(pNewTimeout);// add a timeout in the list
    if(!this->timeouts_.empty()){// if there is something in the list

        TimeoutList::iterator it;
        for(it = this->timeouts_.begin();it != this->timeouts_.end();it++){
            XFTimeout* currentTimeout = (*it);// cast the iterator into a timeout
            if(!timeoutInserted){
                if(currentTimeout->getRelTicks() > pNewTimeout->getRelTicks()){// if the relTicks in current timeout are bigger than the ticks in newTimeout
                  this->timeouts_.insert(it,pNewTimeout);// insert the timeout in the list
                    timeoutInserted=true;
                    if(it!=this->timeouts_.end()){currentTimeout->setRelTicks(currentTimeout->getRelTicks()-pNewTimeout->getRelTicks());}
                    break;
                }
                else{
                    pNewTimeout->setRelTicks(pNewTimeout->getRelTicks()-currentTimeout->getRelTicks());
                }
            }
            /*
            else{
                currentTimeout->setRelTicks(currentTimeout->getRelTicks()-pNewTimeout->getRelTicks());// remove the new timeout ticks in the timeouts further in list
            }*/
        }
        if(!timeoutInserted){// if we didn't inserted the timeout in the list, we push it now in the back
            this->timeouts_.push_back(pNewTimeout);// add a timeout in the list
        }
    }
    else{// if the list is empty
        this->timeouts_.push_front(pNewTimeout);// add a timeout in the list
    }
    this->pMutex_->unlock();

}

void XFTimeoutManager::returnTimeout(XFTimeout *pTimeout)
{
    pTimeout->getBehavior()->pushEvent(pTimeout);
}
