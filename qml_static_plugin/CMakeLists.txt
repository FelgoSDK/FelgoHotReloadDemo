qt_add_library(qml_staticplugin STATIC)
qt_add_qml_module(qml_staticplugin
    URI "DemoStaticPlugin"
    OUTPUT_DIRECTORY "../DemoStaticPlugin"
    RESOURCE_PREFIX "qml"
    VERSION 1.0
    QML_FILES
        QmlStaticPluginText.qml
)
