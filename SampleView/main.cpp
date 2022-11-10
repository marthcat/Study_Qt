#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "menudataobject.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    // ++++++++++++++++++++++++++++++++++++++++++++++++++++
    QList<QObject*> dataList;
    dataList.append(new MenuDataObject("표시 정보", "qrc:/component/Item1Page_component.qml"));
    dataList.append(new MenuDataObject("경로 안내", "qrc:/component/Item2Page_component.qml"));
    dataList.append(new MenuDataObject("경고", "qrc:/component/_blank_.qml"));
    dataList.append(new MenuDataObject("지도 화면", "qrc:/component/_blank_.qml"));
    dataList.append(new MenuDataObject("편의", "qrc:/component/_blank_.qml"));
    dataList.append(new MenuDataObject("Blank1", "qrc:/component/_blank_.qml"));
    dataList.append(new MenuDataObject("Blank2", "qrc:/component/_blank_.qml"));
    dataList.append(new MenuDataObject("Blank3", "qrc:/component/_blank_.qml"));
    dataList.append(new MenuDataObject("Blank4", "qrc:/component/_blank_.qml"));
    dataList.append(new MenuDataObject("Blank5", "qrc:/component/_blank_.qml"));


    engine.rootContext()->setContextProperty("menuList",QVariant::fromValue(dataList));
    //*********************************************************************

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
