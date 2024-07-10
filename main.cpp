#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QStringLiteral>
#ifdef USE_FELGO_HOT_RELOAD
#include <FelgoHotReload>
#endif

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
#ifdef USE_FELGO_HOT_RELOAD
    static FelgoHotReload felgoHotReload(&engine);
#else
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
#endif
    const auto result = app.exec();
    return result;
}
