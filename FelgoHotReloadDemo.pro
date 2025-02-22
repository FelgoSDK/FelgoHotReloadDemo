QT += quick

# To suppress warning about platform SDK
CONFIG += sdk_no_version_check

SOURCES += \
        main.cpp

RESOURCES += qml/qml.qrc
RESOURCES += qml_module/qml_module.qrc
RESOURCES += qml_static_plugin/qml_static_plugin.qrc
RESOURCES += qml_shared_plugin/qml/qml_shared_plugin.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32 {
    QMAKE_LFLAGS_WINDOWS += /DEBUG:NONE
}

include("$${FELGO_HOT_RELOAD_PATH}/qmake/FelgoHotReload.pri")
