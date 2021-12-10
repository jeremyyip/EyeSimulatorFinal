/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLTweezersInteract.h
* @brief	GUI Interactive interface Of Tweezers (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/13
**/

#ifndef _LLTWEEZERSINTERACT_H
#define _LLTWEEZERSINTERACT_H

#include <QObject>

#include "../../../StartupManager/StartupManager.h"

class LLTweezersInteract:public QObject
{
    Q_OBJECT
private:
    enum LLTweezersCmdID
    {
        eLLTweezersCmdNone = 0,
        eLLTweezersCmdStart = 33

    };

public:
    LLTweezersInteract();
    ~LLTweezersInteract();

    Q_INVOKABLE void eventHandler(int cmd_id);

signals:
    void lowLevelTweezersQMLNotify();

private slots:
    void onLLTweezersShowEvent();

private:
    LLTweezersModule *ll_tweezers_module;
};


#endif


