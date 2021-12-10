/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		StartupManager.cpp
* @brief	System startup and enviroment initialization
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#include "StartupManager.h"
#include <QDir>

StartupManager *StartupManager::instance = new StartupManager();

StartupManager::StartupManager()
{
}

void StartupManager::TimerElapse()
{
#ifdef QT_DEBUG
    //QString path("D:/Demo/UnityTest/Empty/UnityTest.exe");
#else
    QString path = QDir::currentPath()+"/Unity/UnityTest.exe";
#endif
    //unity_process = new QProcess();
    //unity_process->start(path);
}

StartupManager *StartupManager::GetInstance()
{
    return instance;
}

StartupManager::~StartupManager()
{
    if(udp_comm != nullptr) delete udp_comm;
    if(timer != nullptr)    delete timer;
    if(unity_process != nullptr)    delete unity_process;

    if(ll_navigasion_module != nullptr) delete ll_navigasion_module;
    if(ll_antitremble_module != nullptr) delete ll_antitremble_module;
    if(ll_tweezers_module != nullptr) delete ll_tweezers_module;

    if(ml_capsulorhexis_module != nullptr) delete ml_capsulorhexis_module;
    if(ml_chopping_module != nullptr) delete ml_chopping_module;
}

void StartupManager::Initialization()
{
    udp_comm = new UdpCommunicator();
    ll_navigasion_module = new LLNavigasionModule(udp_comm);
    ll_antitremble_module = new LLAntiTrembleModule(udp_comm);
    ll_tweezers_module = new LLTweezersModule(udp_comm);

    ml_capsulorhexis_module = new MLCapsulorhexisModule(udp_comm);
    ml_chopping_module = new MLChoppingModule(udp_comm);

    timer = new QTimer();
    connect(timer,SIGNAL(timeout()),this,SLOT(TimerElapse()));

    timer->setSingleShot(true);
    timer->start(3000);
}

UdpCommunicator *StartupManager::GetUdpCommunicatorPtr()
{
    return udp_comm;
}

LLNavigasionModule * StartupManager::GetLLNavigasionModulePtr()
{
    return ll_navigasion_module;
}

LLAntiTrembleModule *StartupManager::GetLLAntiTrembleModulePtr()
{
    return  ll_antitremble_module;
}

LLTweezersModule *StartupManager::GetLLTweezersModulePtr()
{
    return ll_tweezers_module;
}

MLCapsulorhexisModule *StartupManager::GetMLCapsulorhexisModulePtr()
{
    return ml_capsulorhexis_module;
}

MLChoppingModule *StartupManager::GetMLChoppingModulePtr()
{
    return ml_chopping_module;
}

