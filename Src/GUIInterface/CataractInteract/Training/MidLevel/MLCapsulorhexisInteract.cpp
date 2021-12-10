/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		MLCapsulorhexisInteract.cpp
* @brief	GUI Interactive interface Of Capsulorhexis (Middle Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/15
**/

#include "MLCapsulorhexisInteract.h"

MLCapsulorhexisInteract::MLCapsulorhexisInteract()
{
    ml_capsulorhexis_module = StartupManager::GetInstance()->GetMLCapsulorhexisModulePtr();
    connect(ml_capsulorhexis_module,SIGNAL(MLCapsulorhexisShowEvent()),this,SLOT(onMLCapsulorhexisShowEvent()));
}

MLCapsulorhexisInteract::~MLCapsulorhexisInteract()
{

}

void MLCapsulorhexisInteract::eventHandler(int cmd_id)
{
    if(cmd_id == eMLCapsulorhexisCmdStart)
    {
        //start training course
        ml_capsulorhexis_module->StartTrainingCourse();
    }
}

void MLCapsulorhexisInteract::onMLCapsulorhexisShowEvent()
{
    emit midLevelCapsulorhexisQMLNotify();   //notify QML
}
