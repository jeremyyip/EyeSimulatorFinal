/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		MLChoppingInteract.h
* @brief	GUI Interactive interface Of Chopping (Middle Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/17
**/

#ifndef _MLCHOPPINGINTERACT_H
#define _MLCHOPPINGINTERACT_H

#include <QObject>

#include "../../../StartupManager/StartupManager.h"

class MLChoppingInteract:public QObject
{
    Q_OBJECT
private:
    enum MLChoppingCmdID
    {
        eMLChoppingCmdNone = 0,
        eMLChoppingCmdStart = 116

    };

public:
    MLChoppingInteract();
    ~MLChoppingInteract();

    Q_INVOKABLE void eventHandler(int cmd_id);

signals:
    void midLevelChoppingQMLNotify();

private slots:
    void onMLChoppingShowEvent();

private:
    MLChoppingModule *ml_chopping_module;
};


#endif


