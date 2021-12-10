/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLNavigasion.qml
* @brief    low level course navigasion of cataract
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/24
**/

import QtQuick 2.12
import QtQuick.Controls 2.14
import CSS.LLNavigasionInteract 1.0

import "../../enum"

Rectangle{
    id: ll_navigasion_page

    //property int start: 1

    x:0
    y:0
    width:global_var.window_width
    height: global_var.window_height

    visible: (global_var.current_page_id == Enum.ECataPageID.CataPageLLNavigasion)? true:false;

    LLNavigasionInteract{
        id: ll_navigasion_interact

        onLowLevelNavQMLNotify: {   //show llnavigasion ui
            if(!global_var.window_show)
            {
                global_var.ll_navi_init = false;
                global_var.window_show = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLNavigasion;
            }
        }
    }

    //color: "blue"
    //title rectangle
    Rectangle{
        id: llnavigasion_title
        width: global_var.window_width
        height: 100

        anchors.top: parent.top
        anchors.topMargin: 0

        color: "mediumturquoise"

        opacity: 0.8

        Text {
            id: llnavigasion_text
            text: qsTr("定位训练")

            anchors.top: parent.top
            anchors.topMargin: 30
            //anchors.left: parent.left
            //anchors.leftMargin: 467
            anchors.horizontalCenter: parent.horizontalCenter

            font.bold: true
            font.pixelSize: 35
            font.italic: false
            font.letterSpacing: 2

            color: "darkred"
        }

    }

    Image{
        id: navi_img

        width: 250
        height: 250

        anchors.left: parent.left
        anchors.leftMargin: 140
        anchors.top: llnavigasion_title.bottom
        anchors.topMargin: 100

        source: "qrc:/resource/picture/lowlevel/dingwei2.png";

    }

    Rectangle{
        id:navi_introduction

        width: 500
        height: 250

        //border.color: "lightgray"
        //radius: 50
        //color: "lightgray"

        anchors.left: navi_img.right
        anchors.leftMargin: 80
        anchors.verticalCenter: navi_img.verticalCenter

        Label{
            id: course_title

            text: "课程介绍:"
            font.bold: true
            font.pixelSize: 20

            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10

        }

    }

  Rectangle{
      id: temp_buttons

      width: global_var.window_width
      height: 200

      anchors.left: parent.left
      anchors.leftMargin: 0
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 0

      visible: !global_var.ll_navi_init

    Rectangle{
        id:back_catahome_btn

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: parent.left
        anchors.leftMargin: 220
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: back_txt

            text: qsTr("返回")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                back_catahome_btn.color = "lightgreen"
            }

            onExited: {
                back_catahome_btn.color = "paleturquoise"
            }

            onClicked: {
                global_var.current_page_id = Enum.ECataPageID.CataPageHome;
                global_var.ll_nav1_source = ""; //destroy the page qml
            }

        }

    }


    Rectangle{
        id:continue_btn

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: back_catahome_btn.right
        anchors.leftMargin: 140
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: continue_txt

            text: qsTr("继续")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                continue_btn.color = "lightgreen"
            }

            onExited: {
                continue_btn.color = "paleturquoise"
            }

            onClicked: {
                global_var.window_show = false; //hidde the window
            }

        }

    }


    Rectangle{
        id:start_btn

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: continue_btn.right
        anchors.leftMargin: 140
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: start_txt

            text: qsTr("开始")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                start_btn.color = "lightgreen"
            }

            onExited: {
                start_btn.color = "paleturquoise"
            }

            onClicked: {
                ll_navigasion_interact.eventHandler(Enum.ELowLevelCmdID.LLNavStartCmdID);
                global_var.window_show = false; //hidde the window
            }

        }

    }
  }


  Rectangle{
      id: init_buttons

      width: global_var.window_width
      height: 200

      anchors.left: parent.left
      anchors.leftMargin: 0
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 0

      visible: global_var.ll_navi_init

    Rectangle{
        id:back_catahome_btn_init

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: parent.left
        anchors.leftMargin: 220
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: back_txt_init

            text: qsTr("返回")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                back_catahome_btn_init.color = "lightgreen"
            }

            onExited: {
                back_catahome_btn_init.color = "paleturquoise"
            }

            onClicked: {
                global_var.current_page_id = Enum.ECataPageID.CataPageHome;
                global_var.ll_nav1_source = ""; //destroy the page qml
                console.log("destroy");
            }

        }

    }

    Rectangle{
        id:start_btn_init

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: back_catahome_btn_init.right
        anchors.leftMargin: 140*2
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: start_txt_init

            text: qsTr("开始")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                start_btn_init.color = "lightgreen"
            }

            onExited: {
                start_btn_init.color = "paleturquoise"
            }

            onClicked: {
                ll_navigasion_interact.eventHandler(Enum.ELowLevelCmdID.LLNavStartCmdID);
                global_var.window_show = false; //hidde the window
            }

        }

    }
  }


  /*BusyIndicator{
    id:busy
    width: 150
    height: 150

    running: false
    anchors.centerIn: parent
  }*/


}




