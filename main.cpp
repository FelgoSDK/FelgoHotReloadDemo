#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QStringLiteral>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    const auto result = app.exec();
    return result;
}
