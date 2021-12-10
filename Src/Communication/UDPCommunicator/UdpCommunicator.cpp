/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		UdpCommunicator.cpp
* @brief	UDP Communication between UI process and Unity process
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#include "UdpCommunicator.h"

UdpCommunicator::UdpCommunicator()
{
    //initialization
    clientIp = QHostAddress("0.0.0.0");
    clientPort = 0;

    cmd_sets = new CmdSets();

    udpSocket = new QUdpSocket(this);
    udpSocket->bind(QHostAddress::Any,8888);
    connect(udpSocket,SIGNAL(readyRead()),this,SLOT(ProcessPendingDatagram()));

}

UdpCommunicator::~UdpCommunicator()
{
    if(udpSocket!=nullptr)  delete udpSocket;
    if(cmd_sets!=nullptr)   delete cmd_sets;
}

void UdpCommunicator::SocketSend(QString sendStr, QHostAddress targetIp, quint16 targetPort)
{
    udpSocket->writeDatagram(sendStr.toStdString().c_str(),sendStr.length(),targetIp,targetPort);
}

void UdpCommunicator::SendBufToUnity(char *data,int len)
{
  //Notes: When App start, clientIp and clientPort will get the value at the time of first communication
    udpSocket->writeDatagram(data,len,clientIp,clientPort);
}

CmdSets *UdpCommunicator::GetCmdSetsPtr()
{
    return cmd_sets;
}

void UdpCommunicator::ProcessPendingDatagram()
{
    while(udpSocket->hasPendingDatagrams()) //if has then return true
    {
        QByteArray recvData;

        recvData.resize(udpSocket->pendingDatagramSize());  //set QByteArrary size
        udpSocket->readDatagram(recvData.data(),recvData.size(),&clientIp,&clientPort);//read data and save in the byte arrar

        char buf[1024]={0x00}; //buffer used to receive package from Unity side

        memcpy(buf,recvData.data(),recvData.size());

        switch(buf[0])  //head of package received
        {
        case 'S':        //SetupReady: notify to switch screen from setup page to home page
            emit NotifySetupReady();
            break;
        case 'C':       //Cataract package interpretion
                int cmd_id = 0;
                cmd_id = buf[2]<<8 | buf[1];

                unsigned int data_len = 0;
                data_len = buf[6]<<24 | buf[5]<<16 | buf[4]<<8 | buf[3];

                if(data_len != 0)
                {
                    char *data_buf = new char[data_len];

                    memset(data_buf,0x00,data_len);
                    memcpy(data_buf,buf+7,data_len);
                    cmd_sets->ProcessCataract(cmd_id,data_buf,data_len);

                    delete []data_buf;
                }
                else
                {
                    //CataractCmdTable[cmd_id].pfun(nullptr,0);
                    cmd_sets->ProcessCataract(cmd_id,nullptr,0);
                }

            break;
        }
    }
}












