#include <config/xf-config.h>

#if (USE_XF_IDF_STM32_EVENT_QUEUE_CLASS != 0)

#include <cassert>
#include "eventqueue.h"

// TODO: Implement code for XFEventQueue class

bool XFEventQueue::pend()
{
    // Method cannot be used in an IDF! Waiting within
    // this method would block the whole XF
    return false;
}

XFEventQueue::XFEventQueue() {
}

XFEventQueue::~XFEventQueue() {
}

bool XFEventQueue::empty() const {
	return this->queue_.empty();
}

bool XFEventQueue::push(const XFEvent *pEvent, bool fromISR) {
	if(fromISR){
		this->mutex_.lock();
	}
	this->queue_.push(pEvent);
	if(fromISR){
		this->mutex_.unlock();
	}
	return true;
}

const XFEvent* XFEventQueue::front() {
	return this->queue_.front();
}

void XFEventQueue::pop() {
	this->queue_.pop();
}

#endif // USE_XF_IDF_STM32_EVENT_QUEUE_CLASS
