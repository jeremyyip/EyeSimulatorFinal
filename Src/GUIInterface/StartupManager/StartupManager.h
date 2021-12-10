/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		StartupManager.h
* @brief	System startup and enviroment initialization(object manager)(FACADE/SINGLETON)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#ifndef _STARTUPMANAGER_H
#define _STARTUPMANAGER_H

#include <QTimer>
#include <QProcess>

#include "../../Modules/Cataract/Training/LowLevel/LLNavigasionModule.h"
#include "../../Modules/Cataract/Training/LowLevel/LLAntiTrembleModule.h"
#include "../../Modules/Cataract/Training/LowLevel/LLTweezersModule.h"

#include "../../Modules/Cataract/Training/MidLevel/MLCapsulorhexisModule.h"
#include "../../Modules/Cataract/Training/MidLevel/MLChoppingModule.h"

class StartupManager:public QObject
{
    Q_OBJECT
public:
    static StartupManager *GetInstance();
    ~StartupManager();

    //startup initialization
    void Initialization();

    //functions for getting ptr for GUI Interface class
    UdpCommunicator *GetUdpCommunicatorPtr();

    LLNavigasionModule  *GetLLNavigasionModulePtr();
    LLAntiTrembleModule  *GetLLAntiTrembleModulePtr();
    LLTweezersModule  *GetLLTweezersModulePtr();

    MLCapsulorhexisModule *GetMLCapsulorhexisModulePtr();
    MLChoppingModule *GetMLChoppingModulePtr();

private:
    StartupManager();

private slots:
    void TimerElapse();

private:
    static StartupManager *instance;

    QTimer *timer;
    QProcess *unity_process;

    UdpCommunicator *udp_comm;


private:
    LLNavigasionModule *ll_navigasion_module;
    LLAntiTrembleModule *ll_antitremble_module;
    LLTweezersModule *ll_tweezers_module;

    MLCapsulorhexisModule *ml_capsulorhexis_module;
    MLChoppingModule *ml_chopping_module;
};


#endif

