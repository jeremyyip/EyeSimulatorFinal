/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		CmdSets.h
* @brief	Command sets for processing message received from Unity
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/26
**/

#ifndef _CMDSETS_H
#define _CMDSETS_H

#include "CataractCmdProc.h"

#include <unordered_map>
#include <functional>

//typedef void (CataractCmdProc::*Pfun)(void *data_in,unsigned int lenth);
typedef std::function<void(void*,unsigned int)> Pfun;

class CmdSets
{
public:
    CmdSets();
    ~CmdSets();

    void ProcessCataract(unsigned int cmd_id,void *data_in,unsigned int lenth);

    CataractCmdProc *GetCataractCmdProcPtr();   //get ptr for modules

private:

    CataractCmdProc *cata_proc;
    std::unordered_map<unsigned int,Pfun> cmd_map;

};


#endif















