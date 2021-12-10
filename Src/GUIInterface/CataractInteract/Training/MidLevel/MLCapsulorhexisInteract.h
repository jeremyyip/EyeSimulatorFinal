/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		MLCapsulorhexisInteract.h
* @brief	GUI Interactive interface Of Capsulorhexis (Middle Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/15
**/

#ifndef _MLCAPSULORHEXISINTERACT_H
#define _MLCAPSULORHEXISINTERACT_H

#include <QObject>

#include "../../../StartupManager/StartupManager.h"

class MLCapsulorhexisInteract:public QObject
{
    Q_OBJECT
private:
    enum MLCapsulorhexisCmdID
    {
        eMLCapsulorhexisCmdNone = 0,
        eMLCapsulorhexisCmdStart = 100

    };

public:
    MLCapsulorhexisInteract();
    ~MLCapsulorhexisInteract();

    Q_INVOKABLE void eventHandler(int cmd_id);

signals:
    void midLevelCapsulorhexisQMLNotify();

private slots:
    void onMLCapsulorhexisShowEvent();

private:
    MLCapsulorhexisModule *ml_capsulorhexis_module;
};


#endif


