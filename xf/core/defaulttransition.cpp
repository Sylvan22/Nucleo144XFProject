#include "xf/defaulttransition.h"

// TODO: Implement code for XFDefaultTransition class

XFDefaultTransition::XFDefaultTransition():XFEvent(DefaultTransition)
{

}

bool XFDefaultTransition::deleteAfterConsume() const
{
    return false;
}
