/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		Setup.qml
* @brief	setup page when system start
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/17
**/

import QtQuick 2.12
import CSS.SetupInteract 1.0

import "../enum"

Rectangle{
    id: setup_page

    x:0
    y:0
    width: global_var.window_width
    height: global_var.window_height
    visible: (global_var.current_page_id == Enum.EPageID.SetupPage)? true:false;

    Image {
        id: setup_picture

        anchors.fill: parent
        source: "qrc:/resource/picture/setup.png"

    }

    Text {
        id: setup_text
        text: qsTr("欢迎使用")

        anchors.centerIn: parent

        font.bold: true
        font.pixelSize: 50
        font.italic: true
        font.letterSpacing: 5

        color: "white"
    }

    SetupInteract{
        id: setup_interact
        onSetupPageChange: {
            global_var.current_page_id = Enum.EPageID.HomePage;  //change current page id to home page
        }
    }

}

