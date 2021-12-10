/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		MLChoppingInteract.cpp
* @brief	GUI Interactive interface Of Chopping(Middle Level Trainning)
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/17
**/

#include "MLChoppingInteract.h"

MLChoppingInteract::MLChoppingInteract()
{
    ml_chopping_module = StartupManager::GetInstance()->GetMLChoppingModulePtr();
    connect(ml_chopping_module,SIGNAL(MLChoppingShowEvent()),this,SLOT(onMLChoppingShowEvent()));
}

MLChoppingInteract::~MLChoppingInteract()
{

}

void MLChoppingInteract::eventHandler(int cmd_id)
{
    if(cmd_id == eMLChoppingCmdStart)
    {
        //start training course
        ml_chopping_module->StartTrainingCourse();
    }
}

void MLChoppingInteract::onMLChoppingShowEvent()
{
    emit midLevelChoppingQMLNotify();   //notify QML
}
