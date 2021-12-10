/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLTweezersModule.h
* @brief	Bussiness Module Of Tweezers (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/13
**/

#ifndef _LLTWEEZERSMODULE_H
#define _LLTWEEZERSMODULE_H

#include "../../../../Communication/UDPCommunicator/UdpCommunicator.h"
#include "../../../../Communication/CmdSets/CataractCmdProc.h"

class LLTweezersModule:public QObject
{
    Q_OBJECT
public:
    LLTweezersModule(UdpCommunicator *comm);
    ~LLTweezersModule();

    void StartTrainingCourse(); //send message to unity according to protocol

signals:
    void LLTweezersShowEvent();

public slots:
    void onLLTweezersEvent();

private:
    UdpCommunicator *udp_comm;

};


#endif
