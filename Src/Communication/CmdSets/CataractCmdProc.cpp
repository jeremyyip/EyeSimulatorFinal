/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		CmdSets.cpp
* @brief	Command Sets for processing message received from Unity
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/26
**/

#include "CataractCmdProc.h"

CataractCmdProc::CataractCmdProc()
{
}

CataractCmdProc::~CataractCmdProc()
{

}

void CataractCmdProc::LLNavigasionCmdProc(void *data_in,unsigned int lenth)
{
    if(lenth == 0)
    {
        emit LLNavigasionDataNotify();
    }
    else
    {
        /*char b[2]={0x00};
        b[0]=((char *)data_in)[0];
        b[1]=((char *)data_in)[1];
        int i =0;
        i++;*/
    }

}

void CataractCmdProc::LLAntiTrembleCmdProc(void *data_in, unsigned int lenth)
{
    if(lenth == 0)
    {
        emit LLAntiTrembleDataNotify();
    }
    else
    {
        /*char b[2]={0x00};
        b[0]=((char *)data_in)[0];
        b[1]=((char *)data_in)[1];
        int i =0;
        i++;*/
    }
}

void CataractCmdProc::LLTweezersCmdProc(void *data_in, unsigned int lenth)
{
    if(lenth == 0)
    {
        emit LLTweezersDataNotify();
    }
    else
    {
        /*char b[2]={0x00};
        b[0]=((char *)data_in)[0];
        b[1]=((char *)data_in)[1];
        int i =0;
        i++;*/
    }
}

void CataractCmdProc::MLCapsulorhexisCmdProc(void *data_in, unsigned int lenth)
{
    if(lenth == 0)
    {
        emit MLCapsulorhexisDataNotify();
    }
    else
    {
        /*char b[2]={0x00};
        b[0]=((char *)data_in)[0];
        b[1]=((char *)data_in)[1];
        int i =0;
        i++;*/
    }
}

void CataractCmdProc::MLChoppingCmdProc(void *data_in, unsigned int lenth)
{
    if(lenth == 0)
    {
        emit MLChoppingDataNotify();
    }
    else
    {
        /*char b[2]={0x00};
        b[0]=((char *)data_in)[0];
        b[1]=((char *)data_in)[1];
        int i =0;
        i++;*/
    }
}
