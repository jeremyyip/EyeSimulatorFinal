/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		MLCapsulorhexisModule.h
* @brief	Bussiness Module Of Capsulorhexis (Middle Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/15
**/

#ifndef _MLCAPSULORHEXISMODULE_H
#define _MLCAPSULORHEXISMODULE_H

#include "../../../../Communication/UDPCommunicator/UdpCommunicator.h"
#include "../../../../Communication/CmdSets/CataractCmdProc.h"

class MLCapsulorhexisModule:public QObject
{
    Q_OBJECT
public:
    MLCapsulorhexisModule(UdpCommunicator *comm);
    ~MLCapsulorhexisModule();

    void StartTrainingCourse(); //send message to unity according to protocol

signals:
    void MLCapsulorhexisShowEvent();

public slots:
    void onMLCapsulorhexisEvent();

private:
    UdpCommunicator *udp_comm;

};


#endif
