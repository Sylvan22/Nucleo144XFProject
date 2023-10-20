#include <stdio.h>
#include "trace/trace.h"
#include "statemachine01.h"

/**
 * Constructor
 *
 * \param repeatInterval Interval in milliseconds used in state machine.
 * \param text Text to display by the state machine.
 */
StateMachine01::StateMachine01(int repeatInterval, string text)
 : repeatInterval_(repeatInterval),
   text_(text)
{
	currentState_ = STATE_INITIAL;
}

StateMachine01::~StateMachine01()
{

}

XFEventStatus StateMachine01::processEvent()
{
	eEventStatus eventStatus = XFEventStatus::Unknown;
    switch (currentState_)
	{
	case STATE_INITIAL:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::Initial)
			{
				GEN(XFDefaultTransition());

				currentState_ = STATE_SAY_HELLO;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_SAY_HELLO:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::DefaultTransition ||
				(getCurrentEvent()->getEventType() == XFEvent::Timeout &&
				 getCurrentTimeout()->getId() == Timeout_SAY_HELLO_id))
			{
				{
					Trace::out(getText()+"\r");
				}

				scheduleTimeout(Timeout_SAY_HELLO_id, getRepeatInterval());

				currentState_ = STATE_SAY_HELLO;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	default:
		break;
	}

	return eventStatus;
}
