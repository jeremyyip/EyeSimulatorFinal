/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLNavigasionInteract.h
* @brief	GUI Interactive interface Of Navigasion (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#ifndef _LLNAVIGASIONINTERACT_H
#define _LLNAVIGASIONINTERACT_H

#include <QObject>

#include "../../../StartupManager/StartupManager.h"

class LLNavigasionInteract:public QObject
{
    Q_OBJECT
private:
    enum LLNavCmdID
    {
        eLLNaVCmdNone = 0,
        eLLNavCmdStart = 1

    };

public:
    LLNavigasionInteract();
    ~LLNavigasionInteract();

    Q_INVOKABLE void eventHandler(int cmd_id);

signals:
    void lowLevelNavQMLNotify();

private slots:
    void onLLNavigasionShowEvent();

private:
    LLNavigasionModule *ll_navigasion_module;
};


#endif


