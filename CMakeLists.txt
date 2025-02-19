cmake_minimum_required(VERSION 3.20)

project(FelgoHotReloadDemo VERSION 0.1 LANGUAGES CXX)

# Provide project name
set(CURRENT_PROJECT_NAME "FelgoHotReloadDemo")

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE BOTH)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Quick)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Quick)

set(PROJECT_SOURCES
    main.cpp
    qml/qml.qrc
)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
    qt_add_executable(FelgoHotReloadDemo
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
    )
# Define target properties for Android with Qt 6 as:
#    set_property(TARGET FelgoHotReloadDemo APPEND PROPERTY QT_ANDROID_PACKAGE_SOURCE_DIR
#                 ${CMAKE_CURRENT_SOURCE_DIR}/android)
# For more information, see https://doc.qt.io/qt-6/qt-add-executable.html#target-creation
else()
    if(ANDROID)
        add_library(FelgoHotReloadDemo SHARED
            ${PROJECT_SOURCES}
        )
# Define properties for Android with Qt 5 after find_package() calls as:
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
    else()
        add_executable(FelgoHotReloadDemo
          ${PROJECT_SOURCES}
        )
    endif()
endif()

target_link_libraries(FelgoHotReloadDemo
    PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)

set_target_properties(FelgoHotReloadDemo PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

install(TARGETS FelgoHotReloadDemo
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})


set(FelgoHotReload_DIR "${FELGO_HOT_RELOAD_PATH}/lib/cmake/FelgoHotReload" CACHE PATH "FelgoHotReload directory" FORCE)
find_package(FelgoHotReload CONFIG REQUIRED)

felgohotreload_configure_executable(${CURRENT_PROJECT_NAME})

# Add a static plugin
add_subdirectory(qml_static_plugin)
target_link_libraries(FelgoHotReloadDemo PRIVATE
    qml_staticpluginplugin
)

# Add a shared plugin
add_subdirectory(qml_shared_plugin)

# Add a custom qml module
qt_add_qml_module(FelgoHotReloadDemo
    URI "demo.qml.module"
    RESOURCE_PREFIX "qml"
    VERSION 1.0
    NO_PLUGIN
    QML_FILES qml_module/QmlModuleText.qml)

# Generate configuration file
cmake_path(
    RELATIVE_PATH CMAKE_CURRENT_BINARY_DIR
    BASE_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE FELGO_HOT_RELOAD_DEMO_BIN_DIR
)

configure_file(
    ${CMAKE_SOURCE_DIR}/hot_reload_config_template.json.in  # Template file
    ${CMAKE_SOURCE_DIR}/hot_reload_config.json              # Configuration file
    @ONLY                                                   # Replace occurence of @VAR@
)

if(QT_VERSION_MAJOR EQUAL 6)
    qt_import_qml_plugins(FelgoHotReloadDemo)
    qt_finalize_executable(FelgoHotReloadDemo)
endif()
