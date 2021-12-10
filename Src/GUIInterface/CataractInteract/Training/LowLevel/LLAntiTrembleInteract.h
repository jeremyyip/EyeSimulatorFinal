/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLAntiTrembleInteract.h
* @brief	GUI Interactive interface Of Anti-Tremble (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/2
**/

#ifndef _LLANTITREMBLEINTERACT_H
#define _LLANTITREMBLEINTERACT_H

#include <QObject>

#include "../../../StartupManager/StartupManager.h"

class LLAntiTrembleInteract:public QObject
{
    Q_OBJECT
private:
    enum LLAntiTrembleCmdID
    {
        eLLAntiTrembleCmdNone = 0,
        eLLAntiTrembleCmdStart = 17

    };

public:
    LLAntiTrembleInteract();
    ~LLAntiTrembleInteract();

    Q_INVOKABLE void eventHandler(int cmd_id);

signals:
    void lowLevelAntiTrembleQMLNotify();

private slots:
    void onLLAntiTrembleShowEvent();

private:
    LLAntiTrembleModule *ll_antitremble_module;
};


#endif


