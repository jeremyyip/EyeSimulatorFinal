/**
* China Simmulation Science Co.
* Copyright(c)2021, All rights reserved.
* @file		CataractLowLevelNav.qml
* @brief	navigasion low level course entrance of cataract
* @version	1.0.0
* @author	Ye ChengYang
* @email	chengyang.ye@csssim.com
* @date		2021/8/20
**/

import QtQuick 2.12
import QtQuick.Controls 2.14

import "../enum"

//course choose rectangle for navigation page
Rectangle{
    id: rect_course_lowlevel_nav

    width: global_var.window_width
    height: 440

    visible: (global_var.current_cata_level == Enum.ECataLevelChoose.CataLowLevelNav)? true:false;

    anchors.top: rect_title.bottom
    anchors.topMargin:20


    //border.color: "grey"

    //button 1
    Rectangle{
        id: navcourse_lowlevel_1

        property real nav_opacity: 1

        width: 140
        height: 140

        anchors.left: parent.left
        anchors.leftMargin: 160
        anchors.top: parent.top
        anchors.topMargin: 20

        opacity: nav_opacity

        Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/dingwei2.png"

        }

        MouseArea{
            anchors.fill:parent

            hoverEnabled: false	//for touch using false, for Mouse using true

            onEntered: {
                navcourse_lowlevel_1.nav_opacity = 0.8
            }

            onExited: {
                navcourse_lowlevel_1.nav_opacity = 1;
            }

            onClicked: {
                global_var.ll_navi_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLNavigasion;
                console.log(global_var.current_page_id);
                global_var.ll_nav1_source = "qrc:/resource/qml/cataract/lowlevelcourse/LLNavigasion.qml"

            }

        }

    }

    Label{
        id: navcourse_lowlevel_1_label

        text: "定位训练1"

        anchors.horizontalCenter: navcourse_lowlevel_1.horizontalCenter
        anchors.top: navcourse_lowlevel_1.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 2
    Rectangle{
        id: navcourse_lowlevel_2

        width: 140
        height: 140

        anchors.left: navcourse_lowlevel_1.right
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
                navcourse_lowlevel_2.opacity = 0.8;
            }

            onExited: {
                navcourse_lowlevel_2.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: navcourse_lowlevel_2_label

        text: "定位训练2"

        anchors.horizontalCenter: navcourse_lowlevel_2.horizontalCenter
        anchors.top: navcourse_lowlevel_2.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 3
    Rectangle{
        id: navcourse_lowlevel_3

        width: 140
        height: 140

        anchors.left: navcourse_lowlevel_2.right
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
                //navcourse_lowlevel_3.opacity = 0.8;
            }

            onExited: {
                navcourse_lowlevel_3.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }


    }

    Label{
        id: navcourse_lowlevel_3_label

        text: "定位训练3"

        anchors.horizontalCenter: navcourse_lowlevel_3.horizontalCenter
        anchors.top: navcourse_lowlevel_3.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 4
    Rectangle{
        id: navcourse_lowlevel_4

        width: 140
        height: 140

        anchors.left: navcourse_lowlevel_3.right
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
                //navcourse_lowlevel_4.opacity = 0.8;
            }

            onExited: {
                navcourse_lowlevel_4.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: navcourse_lowlevel_4_label

        text: "定位训练4"

        anchors.horizontalCenter: navcourse_lowlevel_4.horizontalCenter
        anchors.top: navcourse_lowlevel_4.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 5
    Rectangle{
        id: navcourse_lowlevel_5

        width: 140
        height: 140

        anchors.left: navcourse_lowlevel_1.left
        anchors.leftMargin: 0
        anchors.top: navcourse_lowlevel_1.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                //navcourse_lowlevel_5.opacity = 0.8;
            }

            onExited: {
                navcourse_lowlevel_5.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: navcourse_lowlevel_5_label

        text: "定位训练5"

        anchors.horizontalCenter: navcourse_lowlevel_5.horizontalCenter
        anchors.top: navcourse_lowlevel_5.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 6
    Rectangle{
        id: navcourse_lowlevel_6

        width: 140
        height: 140

        anchors.left: navcourse_lowlevel_2.left
        anchors.leftMargin: 0
        anchors.top: navcourse_lowlevel_2.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                //navcourse_lowlevel_6.opacity = 0.8;
            }

            onExited: {
                navcourse_lowlevel_6.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: navcourse_lowlevel_6_label

        text: "定位训练6"

        anchors.horizontalCenter: navcourse_lowlevel_6.horizontalCenter
        anchors.top: navcourse_lowlevel_6.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 7
    Rectangle{
        id: navcourse_lowlevel_7

        width: 140
        height: 140

        anchors.left: navcourse_lowlevel_3.left
        anchors.leftMargin: 0
        anchors.top: navcourse_lowlevel_3.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                //navcourse_lowlevel_7.opacity = 0.8;
            }

            onExited: {
                navcourse_lowlevel_7.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: navcourse_lowlevel_7_label

        text: "定位训练7"

        anchors.horizontalCenter: navcourse_lowlevel_7.horizontalCenter
        anchors.top: navcourse_lowlevel_7.bottom
        anchors.topMargin: 10

        font.bold: true

    }

    //button 8
    Rectangle{
        id: navcourse_lowlevel_8

        width: 140
        height: 140

        anchors.left: navcourse_lowlevel_4.left
        anchors.leftMargin: 0
        anchors.top: navcourse_lowlevel_4.bottom
        anchors.topMargin: 60

        border.color: "grey"

        /*Image{
            anchors.fill: parent

            source: "qrc:/resource/picture/lowlevel/niezicaozuo.png"

        }*/

        MouseArea{
            anchors.fill:parent

            onEntered: {
                //navcourse_lowlevel_8.opacity = 0.8;
            }

            onExited: {
                navcourse_lowlevel_8.opacity = 1;
            }

            onClicked: {
                /*global_var.ll_antitremble_init = true;
                global_var.current_page_id = Enum.ECataPageID.CataPageLLAntitremble;
                console.log(global_var.current_page_id);*/
            }
        }

    }

    Label{
        id: navcourse_lowlevel_8_label

        text: "定位训练8"

        anchors.horizontalCenter: navcourse_lowlevel_8.horizontalCenter
        anchors.top: navcourse_lowlevel_8.bottom
        anchors.topMargin: 10

        font.bold: true

    }



}
