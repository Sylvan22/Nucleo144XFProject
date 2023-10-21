/*
 * CanInterface.cpp
 *
 *  Created on: Oct 20, 2023
 *      Author: sylva
 */

#include <Board/CanInterface.h>

// ovewrite can rx callback
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan){
	Can_Interface::getInstance()->CAN_available();// tell the can_interface that a can message is available
}
Can_Interface* Can_Interface::getInstance() {
	static ::Can_Interface instance;
	return &instance;
}

void Can_Interface::sendCanMsg(CAN_MESSAGE message) {
	CAN_TxHeaderTypeDef header;
	header.DLC = message.dlc;
	header.StdId = message.id;
	header.IDE = CAN_ID_STD;
	HAL_CAN_AddTxMessage(&hcan1, &header, message.data,(uint32_t *)CAN_TX_MAILBOX0);
}

void Can_Interface::sendCanMsg(uint32_t id, uint32_t dlc, uint8_t *data) {
}

void Can_Interface::CAN_available() {
	// tell the canMessageDispatcher that a message is available
}

CAN_MESSAGE Can_Interface::getCanMsg() {

}

Can_Interface::Can_Interface() {
	// TODO Auto-generated constructor stub

}

Can_Interface::~Can_Interface() {
	// TODO Auto-generated destructor stub
}

