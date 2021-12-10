/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLNavigasionModule.h
* @brief	Bussiness Module Of Navigasion (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#ifndef _LLNAVIGASIONMODULE_H
#define _LLNAVIGASIONMODULE_H

#include "../../../../Communication/UDPCommunicator/UdpCommunicator.h"
#include "../../../../Communication/CmdSets/CataractCmdProc.h"

class LLNavigasionModule:public QObject
{
    Q_OBJECT
public:
    LLNavigasionModule(UdpCommunicator *comm);
    ~LLNavigasionModule();

    void StartTrainingCourse(); //send message to unity according to protocol

signals:
    void LLNavigasionShowEvent();

public slots:
    void onLLNavigasionEvent();

private:
    UdpCommunicator *udp_comm;

};


#endif
