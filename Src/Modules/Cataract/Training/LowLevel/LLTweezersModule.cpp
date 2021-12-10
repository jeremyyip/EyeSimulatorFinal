/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLTweezersModule.cpp
* @brief	Bussiness Module Of Tweezers (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/13
**/

#include "LLTweezersModule.h"

LLTweezersModule::LLTweezersModule(UdpCommunicator *comm)
{
    udp_comm = comm;

    CmdSets *cmdset_ptr = udp_comm->GetCmdSetsPtr();
    CataractCmdProc *cata_cmdproc_ptr = cmdset_ptr->GetCataractCmdProcPtr();

    connect(cata_cmdproc_ptr,SIGNAL(LLTweezersDataNotify()),this,SLOT(onLLTweezersEvent()));
}

LLTweezersModule::~LLTweezersModule()
{

}

void LLTweezersModule::StartTrainingCourse()
{
    char buffer[100] = {0x00};  //define buffer

    //head 1byte "C=Cataract"
    buffer[0] = 'C';

    //cmd_id 2bytes cmd_id=0x0021(33)
    buffer[1] = 0x21;
    buffer[2] = 0x00;

    //data_lenth 4bytes data_lenth=0x00000000;(no data for this course)
    buffer[3] = 0x00;
    buffer[4] = 0x00;
    buffer[5] = 0x00;
    buffer[6] = 0x00;

    //data(no need)

    udp_comm->SendBufToUnity(buffer,7);

}

void LLTweezersModule::onLLTweezersEvent()
{
    emit LLTweezersShowEvent();   //no data to process, just notify
}
