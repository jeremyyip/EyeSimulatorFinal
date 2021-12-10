/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		UdpCommunicator.h
* @brief	UDP Communication between UI process and Unity process
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#ifndef _UDPCOMMUNICATOR_H
#define _UDPCOMMUNICATOR_H

#include <QUdpSocket>
#include "../CmdSets/CmdSets.h"

class UdpCommunicator:public QObject
{
    Q_OBJECT
public:
    UdpCommunicator();
    ~UdpCommunicator();

    void SocketSend(QString sendStr, QHostAddress targetIp, quint16 targetPort);
    void SendBufToUnity(char *data,int len);    //data sent from ui to unity with protocol

    CmdSets *GetCmdSetsPtr();   //get cmdsets ptr for communication connect with modules

public slots:
    void ProcessPendingDatagram();

private:
    QUdpSocket *udpSocket;
    QHostAddress clientIp;  //client ip
    quint16 clientPort;  //client port

    CmdSets *cmd_sets;

signals:
    void NotifySetupReady();    //setup ready notification(notify class StartupManager)

};


#endif
