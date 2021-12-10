/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		CataractLowLevelTweezers.qml
* @brief	Tweezers handle low level course entrance of cataract
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/9/10
**/

import QtQuick 2.12
import QtQuick.Controls 2.14

import "../enum"

//course choose rectangle for Tweezers page
Rectangle{
    id: rect_course_lowlevel_tweezers

    width: global_var.window_width
    height: 440

    visible: (global_var.current_cata_level == Enum.ECataLevelChoose.CataLowLevelTweezers)? true:false;

    anchors.top: rect_title.bottom
    anchors.topMargin:20


    //border.color: "grey"

    //button 1
    Rectangle{
        id: tweezerscourse_lowlevel_1

        width: 140
        height: 140

        anchors.left: parent.left
        anchors.leftMargin: 160
        anchors.top: parent.top
        anchors.topMargin: 20

        border.color: "grey"

        Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo2.png"

        }

        MouseArea{
            anchors.fill:parent

            hoverEnabled: false

            onEntered: {
                tweezerscourse_lowlevel_1.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_1.opacity = 1;
            }

            onClicked: {
                global_var.ll_tweezers_init = true;
                global_var.ll_tweezers1_source = "qrc:/resource/qml/cataract/lowlevelcourse/LLTweezers.qml"
                global_var.current_page_id = Enum.ECataPageID.CataPageLLTweezers;
                console.log(global_var.current_page_id);
            }
        }

    }

    Label{
        id: tweezerscourse_lowlevel_1_label

        text: "镊子操作训练1"

        anchors.horizontalCenter: tweezerscourse_lowlevel_1.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_1.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 2
    Rectangle{
        id: tweezerscourse_lowlevel_2

        width: 140
        height: 140

        anchors.left: tweezerscourse_lowlevel_1.right
        anchors.leftMargin: 80
        anchors.top: parent.top
        anchors.topMargin: 20

        border.color: "grey"

       /* Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/kangzhenchan.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                tweezerscourse_lowlevel_2.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_2.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_tweezers_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLTweezers;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: tweezerscourse_lowlevel_2_label

        text: "镊子操作训练2"

        anchors.horizontalCenter: tweezerscourse_lowlevel_2.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_2.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 3
    Rectangle{
        id: tweezerscourse_lowlevel_3

        width: 140
        height: 140

        anchors.left: tweezerscourse_lowlevel_2.right
        anchors.leftMargin: 80
        anchors.top: parent.top
        anchors.topMargin: 20

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                tweezerscourse_lowlevel_3.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_3.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }


    }

    Label{
        id: tweezerscourse_lowlevel_3_label

        text: "镊子操作训练3"

        anchors.horizontalCenter: tweezerscourse_lowlevel_3.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_3.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 4
    Rectangle{
        id: tweezerscourse_lowlevel_4

        width: 140
        height: 140

        anchors.left: tweezerscourse_lowlevel_3.right
        anchors.leftMargin: 80
        anchors.top: parent.top
        anchors.topMargin: 20

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                tweezerscourse_lowlevel_4.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_4.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: tweezerscourse_lowlevel_4_label

        text: "镊子操作训练4"

        anchors.horizontalCenter: tweezerscourse_lowlevel_4.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_4.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 5
    Rectangle{
        id: tweezerscourse_lowlevel_5

        width: 140
        height: 140

        anchors.left: tweezerscourse_lowlevel_1.left
        anchors.leftMargin: 0
        anchors.top: tweezerscourse_lowlevel_1.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                tweezerscourse_lowlevel_5.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_5.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: tweezerscourse_lowlevel_5_label

        text: "镊子操作训练5"

        anchors.horizontalCenter: tweezerscourse_lowlevel_5.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_5.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 6
    Rectangle{
        id: tweezerscourse_lowlevel_6

        width: 140
        height: 140

        anchors.left: tweezerscourse_lowlevel_2.left
        anchors.leftMargin: 0
        anchors.top: tweezerscourse_lowlevel_2.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                tweezerscourse_lowlevel_6.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_6.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: tweezerscourse_lowlevel_6_label

        text: "镊子操作训练6"

        anchors.horizontalCenter: tweezerscourse_lowlevel_6.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_6.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 7
    Rectangle{
        id: tweezerscourse_lowlevel_7

        width: 140
        height: 140

        anchors.left: tweezerscourse_lowlevel_3.left
        anchors.leftMargin: 0
        anchors.top: tweezerscourse_lowlevel_3.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                tweezerscourse_lowlevel_7.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_7.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: tweezerscourse_lowlevel_7_label

        text: "镊子操作训练7"

        anchors.horizontalCenter: tweezerscourse_lowlevel_7.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_7.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 8
    Rectangle{
        id: tweezerscourse_lowlevel_8

        width: 140
        height: 140

        anchors.left: tweezerscourse_lowlevel_4.left
        anchors.leftMargin: 0
        anchors.top: tweezerscourse_lowlevel_4.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                tweezerscourse_lowlevel_8.opacity = 0.8;
            }

            onExited: {
                tweezerscourse_lowlevel_8.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: tweezerscourse_lowlevel_8_label

        text: "镊子操作训练8"

        anchors.horizontalCenter: tweezerscourse_lowlevel_8.horizontalCenter
        anchors.top: tweezerscourse_lowlevel_8.bottom
        anchors.topMargin: 10

        font.bold: true

    }


}
