/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		Cataract.qml
* @brief    course entrance of cataract
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/23
**/

import QtQuick 2.12
import QtQuick.Controls 2.14

import "../enum"
import "lowlevelcourse"

Rectangle{
    id: cataract_home_page

    x:0
    y:0
    width:  global_var.window_width
    height: global_var.window_height
    visible: (global_var.current_page_id == Enum.ECataPageID.CataPageHome)? true:false;

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

        opacity: 0.8

        Text {
            id: home_text
            text: qsTr("白内障手术模拟训练")

            anchors.top: parent.top
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter


            font.bold: true
            font.pixelSize: 35
            font.italic: false
            font.letterSpacing: 2

            color: "darkred"
        }

    }

    NumberAnimation{
        id:animation

        target: cataract_home_page
        property: "x"
        from: -global_var.window_width
        to:0
        duration: 200
        easing.type: Easing.InOutCirc
    }

    //course choose rectangle
    CataractLowLevelNav{}
    CataractLowLevelAntiTremble{}
    CataractLowLevelTweezers{}

    CataractMidLevelCapsulor{}
    CataractMidLevelChop{}

    //level choose rectangle
    Rectangle{
        id: rect_level

        width: cataract_home_page.width
        height: 160

        anchors.bottom:parent.bottom
        anchors.bottomMargin: 0

        //color:"lavender"
        border.color: "lavender"

        //Low level button
        Rectangle{
            id: low_level_bth

            width: 120
            height: 120
            color: (global_var.current_cata_level>= Enum.ECataLevelChoose.CataLowLevelNav
                    && global_var.current_cata_level< Enum.ECataLevelChoose.CataLowLevelMax)?"chartreuse":"darkgrey";
            border.color: "black"
            radius: 60

            anchors.left: parent.left
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30

            Text {
                id: lowlevel_txt
                text: qsTr("初级")
                font.bold: true
                font.pixelSize: 40
                color: "white"

                anchors.centerIn: parent

            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    global_var.current_cata_level = Enum.ECataLevelChoose.CataLowLevelNav;
                    global_var.page_indicator = 1;
                    global_var.current_cata_level_page = global_var.ll_total_pages;
                    console.log(global_var.current_cata_level);
                }

            }

        }

        //Middle level button
        Rectangle{
            id: mid_level_bth

            width: 120
            height: 120
            border.color: "black"
            radius: 60

            color: (global_var.current_cata_level>= Enum.ECataLevelChoose.CataMidLevelCapsulorhexis
                    && global_var.current_cata_level< Enum.ECataLevelChoose.CataMidLevelMax)?"chartreuse":"darkgrey";

            anchors.left: low_level_bth.right
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30

            Text {
                id: midlevel_txt
                text: qsTr("中级")
                font.bold: true
                font.pixelSize: 40
                color: "white"

                anchors.centerIn: parent

            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    global_var.current_cata_level = Enum.ECataLevelChoose.CataMidLevelCapsulorhexis;
                    global_var.page_indicator = 1;
                    global_var.current_cata_level_page = global_var.ml_total_pages;
                    console.log(global_var.current_cata_level);
                }

            }

        }

        //High level button
        Rectangle{
            id: high_level_bth

            width: 120
            height: 120
            border.color: "black"
            radius: 60

            color: (global_var.current_cata_level == Enum.ECataLevelChoose.CataHighLevel)?"chartreuse":"darkgrey";

            anchors.left: mid_level_bth.right
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30

            Text {
                id: highlevel_txt
                text: qsTr("高级")
                font.bold: true
                font.pixelSize: 40
                color: "white"

                anchors.centerIn: parent

            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    global_var.current_cata_level = Enum.ECataLevelChoose.CataHighLevel;
                }

            }

        }

        //Back home button
        Rectangle{
            id: back_home_bth

            width: 120
            height: 120
            border.color: "black"
            radius: 60

            color: "darkgrey";

            anchors.left: high_level_bth.right
            anchors.leftMargin: 120
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30

            opacity: 1

            Text {
                id: backhome_txt
                text: qsTr("返回")
                font.bold: true
                font.pixelSize: 40
                color: "white"

                anchors.centerIn: parent

            }

            MouseArea{
                anchors.fill: parent

                onEntered:{
                    back_home_bth.opacity = 0.7
                    back_home_bth.color = "chartreuse"
                }

                onExited: {
                    back_home_bth.opacity = 1;
                    back_home_bth.color = "darkgrey"
                }

                onClicked: {
                    global_var.current_cata_level = Enum.ECataLevelChoose.CataLowLevelNav;     //reset course level
                    global_var.current_page_id = Enum.EPageID.HomePage; //change to home page
                }

            }

        }

    }


    //previous and next page
    Rectangle{
        id: previous_page

        property bool enter: false

        width:60
        height:60

        visible: (global_var.page_indicator !=1 )? true:false

        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: parent.verticalCenter

        Image {
            anchors.fill: parent

            source: previous_page.enter? "qrc:/resource/picture/PreviousEnter.PNG":"qrc:/resource/picture/Previous.PNG"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                previous_page.enter = true
            }

            onExited: {
                previous_page.enter = false
            }

            onClicked: {
                global_var.current_cata_level--;  //previous
                global_var.page_indicator--;
            }

        }

    }

    Rectangle{
        id: next_page

        property bool enter: false

        width:60
        height:60

        visible: (global_var.page_indicator != global_var.current_cata_level_page )? true:false   //assume total 10 pages

        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.verticalCenter: parent.verticalCenter

        Image {
            anchors.fill: parent

            source: next_page.enter? "qrc:/resource/picture/NextEnter.PNG":"qrc:/resource/picture/Next.PNG"
        }

        MouseArea{
            anchors.fill: parent

            onEntered: {
                next_page.enter = true
            }

            onExited: {
                next_page.enter = false
            }

            onClicked: {
                //animation.start()
                global_var.current_cata_level = global_var.current_cata_level + 1;  //next
                global_var.page_indicator = global_var.page_indicator + 1;

            }

        }

    }



}
