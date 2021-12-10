/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		MLChop.qml
* @brief    middle level course chop of cataract
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/17
**/

import QtQuick 2.12
import QtQuick.Controls 2.14
import CSS.MLChoppingInteract 1.0

import "../../enum"


Rectangle{
    id: ml_chop_page

    //property int start: 1

    x:0
    y:0
    width:global_var.window_width
    height: global_var.window_height

    visible: (global_var.current_page_id == Enum.ECataPageID.CataPageMLChop)? true:false;

    MLChoppingInteract{
        id: ml_chop_interact

        onMidLevelChoppingQMLNotify: {   //show mlchop ui
            if(!global_var.window_show)
            {
                global_var.ml_chop_init = false;
                global_var.window_show = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageMLChop;
            }
        }
    }

    //color: "blue"
    //title rectangle
    Rectangle{
        id: mlchop_title
        width: global_var.window_width
        height: 100

        anchors.top: parent.top
        anchors.topMargin: 0

        color: "mediumturquoise"

        opacity: 0.8

        Text {
            id: mlchop_text
            text: qsTr("劈核训练")

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
        id: mlchop_img

        width: 250
        height: 250

        anchors.left: parent.left
        anchors.leftMargin: 140
        anchors.top: mlchop_title.bottom
        anchors.topMargin: 100

        source: "qrc:/resource/picture/midlevel/pihe2.png";

    }

    Rectangle{
        id:mlchop_introduction

        width: 500
        height: 250

        //border.color: "lightgray"
        //radius: 50
        //color: "lightgray"

        anchors.left: mlchop_img.right
        anchors.leftMargin: 80
        anchors.verticalCenter: mlchop_img.verticalCenter

        Label{
            id: mlchop_course_title

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
      id: mlchop_temp_buttons

      width: global_var.window_width
      height: 200

      anchors.left: parent.left
      anchors.leftMargin: 0
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 0

      visible: !global_var.ml_chop_init

    Rectangle{
        id:mlchop_back_catahome_btn

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
            id: mlchop_back_txt

            text: qsTr("返回")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                mlchop_back_catahome_btn.color = "lightgreen"
            }

            onExited: {
                mlchop_back_catahome_btn.color = "paleturquoise"
            }

            onClicked: {
                global_var.current_page_id = Enum.ECataPageID.CataPageHome;
                global_var.ml_chop1_source = ""; //destroy the page qml
                console.log("ml chop1 destroy");
            }

        }

    }


    Rectangle{
        id:mlchop_continue_btn

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: mlchop_back_catahome_btn.right
        anchors.leftMargin: 140
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: mlchop_continue_txt

            text: qsTr("继续")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                mlchop_continue_btn.color = "lightgreen"
            }

            onExited: {
                mlchop_continue_btn.color = "paleturquoise"
            }

            onClicked: {
                global_var.window_show = false; //hidde the window
            }

        }

    }


    Rectangle{
        id:mlchop_start_btn

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: mlchop_continue_btn.right
        anchors.leftMargin: 140
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: mlchop_start_txt

            text: qsTr("开始")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                mlchop_start_btn.color = "lightgreen"
            }

            onExited: {
                mlchop_start_btn.color = "paleturquoise"
            }

            onClicked: {
                ml_chop_interact.eventHandler(Enum.EMidLevelCmdID.MLChoppingStartCmdID);
                global_var.window_show = false; //hidde the window
            }

        }

    }
  }


  Rectangle{
      id: mlchop_init_buttons

      width: global_var.window_width
      height: 200

      anchors.left: parent.left
      anchors.leftMargin: 0
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 0

      visible: global_var.ml_chop_init

    Rectangle{
        id:mlchop_back_catahome_btn_init

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
            id: mlchop_back_txt_init

            text: qsTr("返回")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                mlchop_back_catahome_btn_init.color = "lightgreen"
            }

            onExited: {
                mlchop_back_catahome_btn_init.color = "paleturquoise"
            }

            onClicked: {
                global_var.current_page_id = Enum.ECataPageID.CataPageHome;
                global_var.ml_chop1_source = ""; //destroy the page qml
                console.log("ml chop destroy");
            }

        }

    }

    Rectangle{
        id:mlchop_start_btn_init

        width: 120
        height: 120
        radius: 60

        color: "paleturquoise"

        border.color: "black"

        anchors.left: mlchop_back_catahome_btn_init.right
        anchors.leftMargin: 140*2
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 60

        Text {
            id: mlchop_start_txt_init

            text: qsTr("开始")
            font.bold: true
            font.pixelSize: 40
            color: "darkred"

            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                mlchop_start_btn_init.color = "lightgreen"
            }

            onExited: {
                mlchop_start_btn_init.color = "paleturquoise"
            }

            onClicked: {
                ml_chop_interact.eventHandler(Enum.EMidLevelCmdID.MLChoppingStartCmdID);
                global_var.window_show = false; //hidde the window
            }

        }

    }
  }

}




