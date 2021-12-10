/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		Home.qml
* @brief	Home page
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/19
**/

import QtQuick 2.12
import QtQuick.Controls 2.14

import "../enum"

Rectangle{
    id: home_page

    x:0
    y:0
    width: global_var.window_width
    height: global_var.window_height
    visible: (global_var.current_page_id == Enum.EPageID.HomePage)? true:false;

    /*gradient: Gradient {
        GradientStop {
            position: 0.00;
            color: "lavender"//"#5f9ea0";
        }
    }*/

    //title rectangle
    Rectangle{
        id: rect_title
        width: global_var.window_width
        height: 100

        anchors.top: parent.top
        anchors.topMargin: 0

        color: "mediumturquoise"

        Text {
            id: home_text
            text: qsTr("眼科手术模拟训练教程")

            anchors.top: parent.top
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 340

            font.bold: true
            font.pixelSize: 40
            font.italic: false
            font.letterSpacing: 3

            color: "darkred"
        }

    }



    //cataract entrance design
    Rectangle{
        id: catarect_entrance

        width:  210
        height: 300

        anchors.left: parent.left
        anchors.leftMargin: 220
        anchors.top: parent.top
        anchors.topMargin: 200

        color: "orange"
        border.color: "black"
        border.width: 0
        radius: 50

        opacity: 1

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                catarect_entrance.opacity = 0.7;
            }

            onExited: {
                catarect_entrance.opacity = 1;
            }

            onClicked: {
                global_var.current_page_id = Enum.ECataPageID.CataPageHome;
                global_var.page_indicator = 1;
            }

        }

        Text {
            id: catarect_entrance_text1
            text: qsTr("白内障手术")

            anchors.top: parent.top
            anchors.topMargin: 100
            anchors.left: parent.left
            anchors.leftMargin: 30

            font.bold: true
            font.pixelSize: 30
            font.italic: false
            font.letterSpacing: 2

            color: "green";
        }

        Text {
            id: catarect_entrance_text2
            text: qsTr("模拟训练")

            anchors.top: parent.top
            anchors.topMargin: 150
            anchors.left: parent.left
            anchors.leftMargin: 45

            font.bold: true
            font.pixelSize: 30
            font.italic: false
            font.letterSpacing: 2

            color: "green"
        }

    }


    //retina entrance design
    Rectangle{
        id: retina_entrance

        width:  210
        height: 300

        anchors.left: catarect_entrance.right
        anchors.leftMargin: 220
        anchors.top: parent.top
        anchors.topMargin: 200

        color: "orange"
        border.color: "black"
        border.width: 0
        radius: 50

        opacity: 1

        MouseArea{
            anchors.fill: parent

            onEntered: {
                retina_entrance.opacity = 0.7;
            }

            onExited: {
                retina_entrance.opacity = 1;
            }

            onClicked: {
                //global_var.current_page_id = Enum.ECataPageID.CataPage;
            }

        }

        Text {
            id: retina_entrance_text1
            text: qsTr("视网膜手术")

            anchors.top: parent.top
            anchors.topMargin: 100
            anchors.left: parent.left
            anchors.leftMargin: 30

            font.bold: true
            font.pixelSize: 30
            font.italic: false
            font.letterSpacing: 2

            color: "green"
        }

        Text {
            id: retina_entrance_text2
            text: qsTr("模拟训练")

            anchors.top: parent.top
            anchors.topMargin: 150
            anchors.left: parent.left
            anchors.leftMargin: 45

            font.bold: true
            font.pixelSize: 30
            font.italic: false
            font.letterSpacing: 2

            color: "green"
        }

    }

    Rectangle{
        id:exit_sys

        width:200
        height: 100
        radius: 30

        color: "orange"

        opacity: 1

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 55
        anchors.horizontalCenter: parent.horizontalCenter

        Text{
            anchors.centerIn: parent

            text: "退出系统"
            font.bold: true
            font.pixelSize: 30
            font.italic: false
            font.letterSpacing: 2
            color: "green"
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                exit_sys.opacity = 0.8
            }

            onExited: {
                exit_sys.opacity = 1
            }

            onClicked: {
                Qt.quit()
            }

        }

    }

}

