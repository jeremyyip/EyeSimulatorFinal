/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		main.qml
* @brief	main entrance for screen
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/17
**/

import QtQuick 2.12
import QtQuick.Window 2.12
//import QtQuick.VirtualKeyboard 2.4

import "enum"
import "setup"
import "home"
import "cataract"

import "cataract/lowlevelcourse"

Window {

    //Global variables definition
    Item{
        id: global_var

        //main page variables
        property bool window_show: true  //visibility value for The Main Window(to show screen or not)
        property int window_width: Screen.width+20 //Screen.desktopAvailableWidth  //width(1080)
        property int window_height: Screen.height+20   //Screen.desktopAvailableHeight //height(720)

        property int current_page_id: Enum.HomePage  //visibility value to control page switch
        property int current_cata_level: 500  //default is low level course

        property bool ll_navi_init: true
        property bool ll_antitremble_init: true
        property bool ll_tweezers_init: true

        property bool ml_capsulor_init: true
        property bool ml_chop_init: true

        property int page_indicator: 1  //page 1(default)
        property int ll_total_pages: 3
        property int ml_total_pages: 2
        property int hl_total_pages: 3
        property int current_cata_level_page: ll_total_pages

        property real ll_nav1_opacity: 1
        property string ll_nav1_source: ""

        property string ll_antitremble1_source: ""

        property string ll_tweezers1_source:""

        property string ml_capsulor1_source:""

        property string ml_chop1_source:""

    }

    id: window
    visible: global_var.window_show
    //visibility: (global_var.window_show == true)? "Maximized":"Hidden"
    flags: Qt.WindowStaysOnTopHint

    x:-20
    y:-20
    width: global_var.window_width
    height: global_var.window_height

    title: qsTr("眼科手术模拟训练系统")

    //setup page
    Setup{

    }

    //home page
    Home{

    }

    //Cataract page
    Cataract{

    }

    //low level course page(should call it here as its visibility depends on top window rather than a other page)
    //LLNavigasion{}
    //LLAntiTremble{}

    //Low Level Navigasion
    Loader{
        id:ll_nav_1_loader

        source: global_var.ll_nav1_source
    }

    //Low Level Anti-Tremble
    Loader{
        id:ll_antitremble_1_loader

        source: global_var.ll_antitremble1_source
    }

    //Low level Tweezers
    Loader{
        id:ll_tweezers_1_loader

        source: global_var.ll_tweezers1_source
    }


    //Middle Level Capsulorhexis
    Loader{
        id:ml_capsulor_1_loader

        source: global_var.ml_capsulor1_source
    }

    //Middle Level Chop
    Loader{
        id:ml_chop_1_loader

        source: global_var.ml_chop1_source
    }


    /*
    //Virtual Keyboard
    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }*/
}
