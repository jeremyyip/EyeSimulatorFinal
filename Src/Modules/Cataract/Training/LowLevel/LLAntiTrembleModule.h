/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLAntiTrembleModule.h
* @brief	Bussiness Module Of Anti-Tremble (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/2
**/

#ifndef _LLANTITREMBLEMODULE_H
#define _LLANTITREMBLEMODULE_H

#include "../../../../Communication/UDPCommunicator/UdpCommunicator.h"
#include "../../../../Communication/CmdSets/CataractCmdProc.h"

class LLAntiTrembleModule:public QObject
{
    Q_OBJECT
public:
    LLAntiTrembleModule(UdpCommunicator *comm);
    ~LLAntiTrembleModule();

    void StartTrainingCourse(); //send message to unity according to protocol

signals:
    void LLAntiTrembleShowEvent();

public slots:
    void onLLAntiTrembleEvent();

private:
    UdpCommunicator *udp_comm;

};


#endif
