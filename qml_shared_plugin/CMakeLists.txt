qt_add_library(qml_sharedplugin SHARED
  src/sharedpluginitem.h src/sharedpluginitem.cpp)

qt_add_qml_module(qml_sharedplugin
    PLUGIN_TARGET qml_sharedplugin # Same as module name - do not create a separate shared library just for the plugin registration
    URI "Demo.SharedPlugin"
    OUTPUT_DIRECTORY "../Demo/SharedPlugin"
    RESOURCE_PREFIX "qml"
    VERSION 1.0
    QML_FILES
        qml/QmlSharedPluginText.qml
    SOURCES
        src/sharedpluginitem.h src/sharedpluginitem.cpp
)

target_include_directories(qml_sharedplugin PRIVATE src)
