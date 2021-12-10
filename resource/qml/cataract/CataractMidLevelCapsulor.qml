/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		CataractMidLevelCapsulorhexis.qml
* @brief	middle level course Capsulorhexis entrance of cataract
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/13
**/

import QtQuick 2.12
import QtQuick.Controls 2.14

import "../enum"

//course choose rectangle
//middle level course capsulor
Rectangle{
    id: rect_course_midlevel_capsulor

    width: global_var.window_width
    height: 440

    visible: (global_var.current_cata_level == Enum.ECataLevelChoose.CataMidLevelCapsulorhexis)? true:false;

    anchors.top: rect_title.bottom
    anchors.topMargin:20

    //button 1
    Rectangle{
        id: course_midlevel_capsulor_1

        width: 140
        height: 140

        anchors.left: parent.left
        anchors.leftMargin: 160
        anchors.top: parent.top
        anchors.topMargin: 20

        Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/midlevel/sinang2.png"
            //fillMode: Image.PreserveAspectFit
        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_1.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_1.opacity = 1
            }

            onClicked: {
                global_var.ml_capsulor_init = true;
                global_var.ml_capsulor1_source = "qrc:/resource/qml/cataract/middlelevelcourse/MLCapsulor.qml"
                global_var.current_page_id = Enum.ECataPageID.CataPageMLCapsulorhexis;
                console.log(global_var.current_page_id);
            }

        }


    }

    Label{
        id: course_midlevel_capsulor_1_label

        text: "撕囊训练1"

        anchors.horizontalCenter: course_midlevel_capsulor_1.horizontalCenter
        anchors.top: course_midlevel_capsulor_1.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 2
    Rectangle{
        id: course_midlevel_capsulor_2

        width: 140
        height: 140

        anchors.left: course_midlevel_capsulor_1.right
        anchors.leftMargin: 80
        anchors.top: parent.top
        anchors.topMargin: 20

        Image{
            anchors.fill: parent

            //source: "qrc:/resource/picture/midlevel/pihe2.png"
            fillMode: Image.PreserveAspectFit

        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_2.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_2.opacity = 1
            }

            onClicked: {

            }

        }

    }

    Label{
        id: course_midlevel_capsulor_2_label

        text: "撕囊训练2"

        anchors.horizontalCenter: course_midlevel_capsulor_2.horizontalCenter
        anchors.top: course_midlevel_capsulor_2.bottom
        anchors.topMargin: 10

        font.bold: true

    }


    //button 3
    Rectangle{
        id: course_midlevel_capsulor_3

        width: 140
        height: 140

        anchors.left: course_midlevel_capsulor_2.right
        anchors.leftMargin: 80
        anchors.top: parent.top
        anchors.topMargin: 20

        Image{
            anchors.fill: parent

            //source: "qrc:/resource/picture/midlevel/pihe.png"
        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_3.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_3.opacity = 1
            }

            onClicked: {

            }

        }


    }

    Label{
        id: course_midlevel_capsulor_3_label

        text: "撕囊训练3"

        anchors.horizontalCenter: course_midlevel_capsulor_3.horizontalCenter
        anchors.top: course_midlevel_capsulor_3.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 4
    Rectangle{
        id: course_midlevel_capsulor_4

        width: 140
        height: 140

        anchors.left: course_midlevel_capsulor_3.right
        anchors.leftMargin: 80
        anchors.top: parent.top
        anchors.topMargin: 20


        Image{
            anchors.fill: parent

            //source: "qrc:/resource/picture/midlevel/pihe.png"

        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_4.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_4.opacity = 1
            }

            onClicked: {

            }

        }

    }

    Label{
        id: course_midlevel_capsulor_4_label

        text: "撕囊训练4"

        anchors.horizontalCenter: course_midlevel_capsulor_4.horizontalCenter
        anchors.top: course_midlevel_capsulor_4.bottom
        anchors.topMargin: 10

        font.bold: true

    }


    //button 5
    Rectangle{
        id: course_midlevel_capsulor_5

        width: 140
        height: 140

        anchors.left: course_midlevel_capsulor_1.left
        anchors.leftMargin: 0
        anchors.top: course_midlevel_capsulor_1.bottom
        anchors.topMargin: 60

        Image{
            anchors.fill: parent

            //source: "qrc:/resource/picture/midlevel/pihe.png"

        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_5.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_5.opacity = 1
            }

            onClicked: {

            }

        }

    }

    Label{
        id: course_midlevel_5_label

        text: "撕囊训练5"

        anchors.horizontalCenter: course_midlevel_capsulor_5.horizontalCenter
        anchors.top: course_midlevel_capsulor_5.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 6
    Rectangle{
        id: course_midlevel_capsulor_6

        width: 140
        height: 140

        anchors.left: course_midlevel_capsulor_2.left
        anchors.leftMargin: 0
        anchors.top: course_midlevel_capsulor_2.bottom
        anchors.topMargin: 60


        Image{
            anchors.fill: parent

            //source: "qrc:/resource/picture/midlevel/pihe.png"

        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_6.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_6.opacity = 1
            }

            onClicked: {

            }

        }

    }

    Label{
        id: course_midlevel_capsulor_6_label

        text: "撕囊训练6"

        anchors.horizontalCenter: course_midlevel_capsulor_6.horizontalCenter
        anchors.top: course_midlevel_capsulor_6.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 7
    Rectangle{
        id: course_midlevel_capsulor_7

        width: 140
        height: 140

        anchors.left: course_midlevel_capsulor_3.left
        anchors.leftMargin: 0
        anchors.top: course_midlevel_capsulor_3.bottom
        anchors.topMargin: 60


        Image{
            anchors.fill: parent

            //source: "qrc:/resource/picture/midlevel/pihe.png"

        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_7.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_7.opacity = 1
            }

            onClicked: {

            }

        }

    }

    Label{
        id: course_midlevel_capsulor_7_label

        text: "撕囊训练7"

        anchors.horizontalCenter: course_midlevel_capsulor_7.horizontalCenter
        anchors.top: course_midlevel_capsulor_7.bottom
        anchors.topMargin: 10

        font.bold: true

    }


    //button 8
    Rectangle{
        id: course_midlevel_capsulor_8

        width: 140
        height: 140

        anchors.left: course_midlevel_capsulor_4.left
        anchors.leftMargin: 0
        anchors.top: course_midlevel_capsulor_4.bottom
        anchors.topMargin: 60


        Image{
            anchors.fill: parent

            //source: "qrc:/resource/picture/midlevel/pihe.png"

        }

        border.color: "grey"

        MouseArea{
            anchors.fill: parent

            hoverEnabled: false

            onEntered: {
                course_midlevel_capsulor_8.opacity = 0.8
            }

            onExited: {
                course_midlevel_capsulor_8.opacity = 1
            }

            onClicked: {

            }


        }

    }

    Label{
        id: course_midlevel_capsulor_8_label

        text: "撕囊训练8"

        anchors.horizontalCenter: course_midlevel_capsulor_8.horizontalCenter
        anchors.top: course_midlevel_capsulor_8.bottom
        anchors.topMargin: 10

        font.bold: true

    }


}
