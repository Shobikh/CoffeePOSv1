#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDirIterator>
#include <QDebug>

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN) && QT_VERSION_CHECK(5, 6, 0) <= QT_VERSION && QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    // qDebug() <<"RESOURCE CONTENT";
    // QDirIterator it(":", QDirIterator::Subdirectories);
    // while (it.hasNext()){
    //     qDebug() << it.next();
    // }
    // qDebug();

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/coffeeposv1/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
