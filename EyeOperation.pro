QT += quick virtualkeyboard

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Src/Communication/CmdSets/CataractCmdProc.cpp \
        Src/Communication/CmdSets/CmdSets.cpp \
        Src/Communication/UDPCommunicator/UdpCommunicator.cpp \
        Src/GUIInterface/CataractInteract/Training/HighLevel/HLBimanualInteract.cpp \
        Src/GUIInterface/CataractInteract/Training/HighLevel/HLTremorInteract.cpp \
        Src/GUIInterface/CataractInteract/Training/LowLevel/LLAntiTrembleInteract.cpp \
        Src/GUIInterface/CataractInteract/Training/LowLevel/LLNavigasionInteract.cpp \
        Src/GUIInterface/CataractInteract/Training/LowLevel/LLTweezersInteract.cpp \
        Src/GUIInterface/CataractInteract/Training/MidLevel/MLCapsulorhexisInteract.cpp \
        Src/GUIInterface/CataractInteract/Training/MidLevel/MLChoppingInteract.cpp \
        Src/GUIInterface/SetupInteract.cpp \
        Src/GUIInterface/StartupManager/StartupManager.cpp \
        Src/Modules/Cataract/Training/HighLevel/HLTremorModule.cpp \
        Src/Modules/Cataract/Training/LowLevel/LLAntiTrembleModule.cpp \
        Src/Modules/Cataract/Training/LowLevel/LLNavigasionModule.cpp \
        Src/Modules/Cataract/Training/LowLevel/LLTweezersModule.cpp \
        Src/Modules/Cataract/Training/MidLevel/MLCapsulorhexisModule.cpp \
        Src/Modules/Cataract/Training/MidLevel/MLChoppingModule.cpp \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \ \
    Src/Communication/CmdSets/CataractCmdProc.h \
    Src/Communication/CmdSets/CmdSets.h \
    Src/Communication/UDPCommunicator/UdpCommunicator.h \
    Src/GUIInterface/CataractInteract/Training/HighLevel/HLBimanualInteract.h \
    Src/GUIInterface/CataractInteract/Training/HighLevel/HLTremorInteract.h \
    Src/GUIInterface/CataractInteract/Training/LowLevel/LLAntiTrembleInteract.h \
    Src/GUIInterface/CataractInteract/Training/LowLevel/LLNavigasionInteract.h \
    Src/GUIInterface/CataractInteract/Training/LowLevel/LLTweezersInteract.h \
    Src/GUIInterface/CataractInteract/Training/MidLevel/MLCapsulorhexisInteract.h \
    Src/GUIInterface/CataractInteract/Training/MidLevel/MLChoppingInteract.h \
    Src/GUIInterface/SetupInteract.h \
    Src/GUIInterface/StartupManager/StartupManager.h \
    Src/Modules/Cataract/Training/HighLevel/HLTremorModule.h \
    Src/Modules/Cataract/Training/LowLevel/LLAntiTrembleModule.h \
    Src/Modules/Cataract/Training/LowLevel/LLNavigasionModule.h \
    Src/Modules/Cataract/Training/LowLevel/LLTweezersModule.h \
    Src/Modules/Cataract/Training/MidLevel/MLCapsulorhexisModule.h \
    Src/Modules/Cataract/Training/MidLevel/MLChoppingModule.h

