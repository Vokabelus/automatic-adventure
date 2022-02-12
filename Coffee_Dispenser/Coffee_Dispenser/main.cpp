#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDir>
#include <QtQml>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QString path = QDir::currentPath();
    const QUrl url("qrc:/app/main.qml");
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    qmlRegisterSingletonType( QUrl("qrc:/app/MyStyle.qml"), "coffee.style", 1, 0, "MyStyle" );
    engine.load(url);

    return app.exec();
}
