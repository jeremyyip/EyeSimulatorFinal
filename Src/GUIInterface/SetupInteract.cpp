/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		SetupInteract.cpp
* @brief	Setup Interact for notification of \
*           setup page change in Setup.qml
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/18
**/

#include "SetupInteract.h"

SetupInteract::SetupInteract()
{
    UdpCommunicator *udp_comm = StartupManager::GetInstance()->GetUdpCommunicatorPtr();
    connect(udp_comm,SIGNAL(NotifySetupReady()),this,SLOT(OnNotifySetupReady()));
}

SetupInteract::~SetupInteract()
{
    if(StartupManager::GetInstance() != nullptr)
    {
        delete StartupManager::GetInstance();
    }
}

void SetupInteract::OnNotifySetupReady()
{
    emit setupPageChange();
}




