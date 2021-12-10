/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLNavigasionInteract.cpp
* @brief	GUI Interactive interface Of Navigasion (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/16
**/

#include "LLNavigasionInteract.h"

LLNavigasionInteract::LLNavigasionInteract()
{
    ll_navigasion_module = StartupManager::GetInstance()->GetLLNavigasionModulePtr();
    connect(ll_navigasion_module,SIGNAL(LLNavigasionShowEvent()),this,SLOT(onLLNavigasionShowEvent()));
}

LLNavigasionInteract::~LLNavigasionInteract()
{

}

void LLNavigasionInteract::eventHandler(int cmd_id)
{
    if(cmd_id == eLLNavCmdStart)
    {
        //start training course
        ll_navigasion_module->StartTrainingCourse();
    }
}

void LLNavigasionInteract::onLLNavigasionShowEvent()
{
    emit lowLevelNavQMLNotify();   //notify QML
}
