#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "Src/GUIInterface/StartupManager/StartupManager.h"
#include "Src/GUIInterface/SetupInteract.h"
#include "Src/GUIInterface/CataractInteract/Training/LowLevel/LLNavigasionInteract.h"
#include "Src/GUIInterface/CataractInteract/Training/LowLevel/LLAntiTrembleInteract.h"
#include "Src/GUIInterface/CataractInteract/Training/LowLevel/LLTweezersInteract.h"

#include "Src/GUIInterface/CataractInteract/Training/MidLevel/MLCapsulorhexisInteract.h"
#include "Src/GUIInterface/CataractInteract/Training/MidLevel/MLChoppingInteract.h"

int main(int argc, char *argv[])
{
    //qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    //start up initialization
    StartupManager::GetInstance()->Initialization();

    //register C++ to qml
    qmlRegisterType<SetupInteract>("CSS.SetupInteract",1,0,"SetupInteract");
    qmlRegisterType<LLNavigasionInteract>("CSS.LLNavigasionInteract",1,0,"LLNavigasionInteract");
    qmlRegisterType<LLAntiTrembleInteract>("CSS.LLAntiTrembleInteract",1,0,"LLAntiTrembleInteract");
    qmlRegisterType<LLTweezersInteract>("CSS.LLTweezersInteract",1,0,"LLTweezersInteract");

    qmlRegisterType<MLCapsulorhexisInteract>("CSS.MLCapsulorhexisInteract",1,0,"MLCapsulorhexisInteract");
    qmlRegisterType<MLChoppingInteract>("CSS.MLChoppingInteract",1,0,"MLChoppingInteract");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/resource/qml/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
