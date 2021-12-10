/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		MLChoppingModule.h
* @brief	Bussiness Module Of Chopping (Middle Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/17
**/

#ifndef _MLCHOPPINGMODULE_H
#define _MLCHOPPINGMODULE_H

#include "../../../../Communication/UDPCommunicator/UdpCommunicator.h"
#include "../../../../Communication/CmdSets/CataractCmdProc.h"

class MLChoppingModule:public QObject
{
    Q_OBJECT
public:
    MLChoppingModule(UdpCommunicator *comm);
    ~MLChoppingModule();

    void StartTrainingCourse(); //send message to unity according to protocol

signals:
    void MLChoppingShowEvent();

public slots:
    void onMLChoppingEvent();

private:
    UdpCommunicator *udp_comm;

};


#endif
