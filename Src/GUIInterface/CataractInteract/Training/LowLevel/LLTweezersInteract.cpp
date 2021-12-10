/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLTweezersInteract.cpp
* @brief	GUI Interactive interface Of Tweezers (Low Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/13
**/

#include "LLTweezersInteract.h"

LLTweezersInteract::LLTweezersInteract()
{
    ll_tweezers_module = StartupManager::GetInstance()->GetLLTweezersModulePtr();
    connect(ll_tweezers_module,SIGNAL(LLTweezersShowEvent()),this,SLOT(onLLTweezersShowEvent()));
}

LLTweezersInteract::~LLTweezersInteract()
{

}

void LLTweezersInteract::eventHandler(int cmd_id)
{
    if(cmd_id == eLLTweezersCmdStart)
    {
        //start training course
        ll_tweezers_module->StartTrainingCourse();
    }
}

void LLTweezersInteract::onLLTweezersShowEvent()
{
    emit lowLevelTweezersQMLNotify();   //notify QML
}
