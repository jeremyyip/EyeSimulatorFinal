/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLAntiTrembleInteract.cpp
* @brief	GUI Interactive interface Of Anti-Tremble (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/2
**/

#include "LLAntiTrembleInteract.h"

LLAntiTrembleInteract::LLAntiTrembleInteract()
{
    ll_antitremble_module = StartupManager::GetInstance()->GetLLAntiTrembleModulePtr();
    connect(ll_antitremble_module,SIGNAL(LLAntiTrembleShowEvent()),this,SLOT(onLLAntiTrembleShowEvent()));
}

LLAntiTrembleInteract::~LLAntiTrembleInteract()
{

}

void LLAntiTrembleInteract::eventHandler(int cmd_id)
{
    if(cmd_id == eLLAntiTrembleCmdStart)
    {
        //start training course
        ll_antitremble_module->StartTrainingCourse();
    }
}

void LLAntiTrembleInteract::onLLAntiTrembleShowEvent()
{
    emit lowLevelAntiTrembleQMLNotify();   //notify QML
}
