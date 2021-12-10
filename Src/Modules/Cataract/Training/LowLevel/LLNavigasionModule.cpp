/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLNavigasionModule.cpp
* @brief	Bussiness Module Of Navigasion (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#include "LLNavigasionModule.h"

LLNavigasionModule::LLNavigasionModule(UdpCommunicator *comm)
{
    udp_comm = comm;

    CmdSets *cmdset_ptr = udp_comm->GetCmdSetsPtr();
    CataractCmdProc *cata_cmdproc_ptr = cmdset_ptr->GetCataractCmdProcPtr();

    connect(cata_cmdproc_ptr,SIGNAL(LLNavigasionDataNotify()),this,SLOT(onLLNavigasionEvent()));
}

LLNavigasionModule::~LLNavigasionModule()
{

}

void LLNavigasionModule::StartTrainingCourse()
{
    char buffer[100] = {0x00};  //define buffer

    //head 1byte "C=Cataract"
    buffer[0] = 'C';

    //cmd_id 2bytes cmd_id=0x0001
    buffer[1] = 0x01;
    buffer[2] = 0x00;

    //data_lenth 4bytes data_lenth=0x00000000;(no data for this course)
    buffer[3] = 0x00;
    buffer[4] = 0x00;
    buffer[5] = 0x00;
    buffer[6] = 0x00;

    //data(no need)

    udp_comm->SendBufToUnity(buffer,7);

}

void LLNavigasionModule::onLLNavigasionEvent()
{
    emit LLNavigasionShowEvent();   //no data to process, just notify
}
