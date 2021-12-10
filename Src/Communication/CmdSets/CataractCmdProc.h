/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		CataractCmdProc.cpp
* @brief	Cataract command process for processing message received from Unity
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/26
**/

#ifndef _CATARACTCMDPROC_H
#define _CATARACTCMDPROC_H

#include <QObject>

class CataractCmdProc:public QObject
{
    Q_OBJECT

public:
    CataractCmdProc();
    ~CataractCmdProc();

public:
    void LLNavigasionCmdProc(void *data_in,unsigned int lenth);
    void LLAntiTrembleCmdProc(void *data_in,unsigned int lenth);
    void LLTweezersCmdProc(void *data_in,unsigned int lenth);

    void MLCapsulorhexisCmdProc(void *data_in,unsigned int lenth);
    void MLChoppingCmdProc(void *data_in,unsigned int lenth);

signals:
    void LLNavigasionDataNotify();
    void LLAntiTrembleDataNotify();
    void LLTweezersDataNotify();

    void MLCapsulorhexisDataNotify();
    void MLChoppingDataNotify();

};


#endif















