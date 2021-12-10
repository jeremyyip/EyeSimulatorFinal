/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		LLAntiTremble.qml
* @brief    low level course anti-tremble of cataract
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/2
**/

import QtQuick 2.12
import QtQuick.Controls 2.14
import CSS.LLAntiTrembleInteract 1.0

import "../../enum"


Rectangle{
    id: ll_antitremble_page

    //property int start: 1

    x:0
    y:0
    width:global_var.window_width
    height: global_var.window_height

    visible: (global_var.current_page_id == Enum.ECataPageID.CataPageLLAntitremble)? true:false;

    LLAntiTrembleInteract{
        id: ll_antitremble_interact

        onLowLevelAntiTrembleQMLNotify: {   //show llantitremble ui
            if(!global_var.window_show)
            {
                global_var.ll_antitremble_init = false;
                global_var.window_show = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
            }
        }
    }

    //color: "blue"
    //title rectangle
    Rectangle{
        id: llantitremble_title
        width: global_var.window_width
        height: 100

        anchors.top: parent.top
        anchors.topMargin: 0

        color: "mediumturquoise"

        opacity: 0.8

        Text {
            id: llantitremble_text
            text: qsTr("抗震颤训练")

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
        id: llantitremble_img

        width: 250
        height: 250

        anchors.left: parent.left
        anchors.leftMargin: 140
        anchors.top: llantitremble_title.bottom
        anchors.topMargin: 100

        source: "qrc:/resource/picture/lowlevel/kangzhenchan2.png";

    }

    Rectangle{
        id:llantitremble_introduction

        width: 500
        height: 250

        //border.color: "lightgray"
        //radius: 50
        //color: "lightgray"

        anchors.left: llantitremble_img.right
        anchors.leftMargin: 80
        anchors.verticalCenter: llantitremble_img.verticalCenter

        Label{
            id: llantitremble_course_title

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
      id: llantitremble_temp_buttons

      width: global_var.window_width
      height: 200

      anchors.left: parent
      anchors.leftMargin: 0
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 0

      visible: !global_var.ll_antitremble_init

    Rectangle{
        id:llantitremble_back_catahome_btn

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
            id: llantitremble_back_txt

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
                global_var.ll_antitremble1_source = ""; //destroy the page qml
                console.log("ll anti-trmble1 destroy");
            }

        }

    }


    Rectangle{
        id:llantitremble_continue_btn

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: llantitremble_back_catahome_btn.right
        anchors.leftMargin: 140
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: llantitremble_continue_txt

            text: qsTr("继续")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                llantitremble_continue_btn.color = "lightgreen"
            }

            onExited: {
                llantitremble_continue_btn.color = "paleturquoise"
            }

            onClicked: {
                global_var.window_show = false; //hidde the window
            }

        }

    }


    Rectangle{
        id:llantitremble_start_btn

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: llantitremble_continue_btn.right
        anchors.leftMargin: 140
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: llantitremble_start_txt

            text: qsTr("开始")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                llantitremble_start_btn.color = "lightgreen"
            }

            onExited: {
                llantitremble_start_btn.color = "paleturquoise"
            }

            onClicked: {
                ll_antitremble_interact.eventHandler(Enum.ELowLevelCmdID.LLAntiTrembleStartCmdID);
                global_var.window_show = false; //hidde the window
            }

        }

    }
  }


  Rectangle{
      id: llantitremble_init_buttons

      width: global_var.window_width
      height: 200

      anchors.left: parent
      anchors.leftMargin: 0
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 0

      visible: global_var.ll_antitremble_init

    Rectangle{
        id:llantitremble_back_catahome_btn_init

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
            id: llantitremble_back_txt_init

            text: qsTr("返回")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                llantitremble_back_catahome_btn_init.color = "lightgreen"
            }

            onExited: {
                llantitremble_back_catahome_btn_init.color = "paleturquoise"
            }

            onClicked: {
                global_var.current_page_id = Enum.ECataPageID.CataPageHome;
                global_var.ll_antitremble1_source = ""; //destroy the page qml
                console.log("ll anti-trmble1 destroy");
            }

        }

    }

    Rectangle{
        id:llantitremble_start_btn_init

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: llantitremble_back_catahome_btn_init.right
        anchors.leftMargin: 140*2
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: llantitremble_start_txt_init

            text: qsTr("开始")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                llantitremble_start_btn_init.color = "lightgreen"
            }

            onExited: {
                llantitremble_start_btn_init.color = "paleturquoise"
            }

            onClicked: {
                ll_antitremble_interact.eventHandler(Enum.ELowLevelCmdID.LLAntiTrembleStartCmdID);
                global_var.window_show = false; //hidde the window
            }

        }

    }
  }

}




