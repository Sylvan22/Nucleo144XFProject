/*
 * CanInterface.h
 *
 *  Created on: Oct 20, 2023
 *      Author: sylva
 */

#ifndef CANINTERFACE_H_
#define CANINTERFACE_H_

#include <stdio.h>
#include <stdint.h>

#include "stm32f4xx_hal.h"                      // Do not use "mcu/mcu.h" here!

#ifdef __cplusplus
	#define EXTERN_C extern "C"
#else
	#define EXTERN_C extern
#endif

EXTERN_C CAN_HandleTypeDef hcan1;// hcan1 is declared in main.c

typedef struct{
	uint32_t id;
	uint32_t dlc;
	uint8_t *data;
}CAN_MESSAGE;


class Can_Interface {
public:
	static Can_Interface* getInstance();
	virtual ~Can_Interface();
	void sendCanMsg(CAN_MESSAGE message);// transmit a CAN message
	void sendCanMsg(uint32_t id,uint32_t dlc,uint8_t *data);
	void CAN_available();// called when can messages are received
	CAN_MESSAGE getCanMsg();// function to call to get the available Can message

protected:
	Can_Interface();
};

#endif /* CANINTERFACE_H_ */
