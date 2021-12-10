/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		SetupInteract.h
* @brief	Setup Interact for notification of \
*           setup page change in Setup.qml
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/18
**/

#include <QObject>

#include "StartupManager/StartupManager.h"

class SetupInteract:public QObject
{
    Q_OBJECT

public:
    SetupInteract();
    ~SetupInteract();

signals:
    void setupPageChange();

private slots:
    void OnNotifySetupReady();

};
