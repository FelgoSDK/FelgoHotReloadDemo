# Felgo QML Hot Reload Demo

A demo integration of Felgo Hot Reload to an existing Qt project

To learn more about Felgo Hot Reload, have a look at https://felgo.com/qml-hot-reload

This repository includes two commits:

- An initial commit with a Qt/QML project
- A [commit](https://github.com/FelgoSDK/FelgoHotReloadDemo/commit/master) with the changes applied to add Felgo Hot Reload to the project

## Installing Prerequisites

### 1. Install Qt

We recommend that you use Qt versions 5.15.2 or 6.5.3 with one of the kits:
- `gcc_64` kit on Linux
- `msvc2019_64` kit on Windows
- `clang_64` kit for Qt 5.15.2 or `macos` kit for Qt 6.5.3 on macOS 

### 2. Install Felgo Hot Reload

You can install Felgo Hot Reload in two ways:

- Download the latest release package of this repository [releases page](https://github.com/FelgoSDK/FelgoHotReloadDemo/releases). This package contains:
  - the Felgo Hot Reload GUI application for
    - **Linux**
    - **Windows**
    - **macOS**
  - the client libraries for the following build kits
    - **GNU/Linux**
      - Qt 5.15.2 `gcc_64`
      - Qt 6.5.3 `gcc_64`
    - **Windows**
      - Qt 5.15.2 `msvc2019_64`
      - Qt 6.5.3 `msvc2019_64`
    - **macOS**
      - Qt 5.15.2 `clang_64`
      - Qt 6.5.3 `macos`
- Install with the official Felgo Hot Reload Installer, coming with a free evaluation (see below). Use this option if you are not using Qt 5.15.2 or Qt 6.5.3, the installer supports a large variety of development kits.

You need a valid license key, which you can obtain with a [free evaluation here](https://felgo.com/qml-hot-reload).

## Running the Project

### 1. Building

We recommend using CMakeLists.txt file to generate build files when using Qt 6 kits, and FelgoHotReloadDemo.pro file to generate build files when using Qt 5 kits.

#### Qt Creator

**Generating project files with CMake**

Add the `FELGO_HOT_RELOAD_PATH` variable to the Projects - Build Settings - CMake Details and set it to the Felgo Hot Reload client libraries directory for your selected kit.
Assuming you are using the repository release package on a Linux machine, the path is `../client/6.5.3/gcc_64`

**Generating project files with qmake**

Add the `FELGO_HOT_RELOAD_PATH` additional argument to the Projects - Build Settings - Build Steps Details and set it to the Felgo Hot Reload client libraries directory for your selected kit.
Assuming you are using the repository release package on a Linux machine, the argument is `FELGO_HOT_RELOAD_PATH=../client/5.15.2/gcc_64`

#### Other IDEs

Use your IDE build configuration features to set the `FELGO_HOT_RELOAD_PATH` variable before you generate the project files.
Assuming you are using the release package on a Linux machine, the path is `../client/6.5.3/gcc_64`

Run CMake or qmake and build the application like any other.

### 2. Create Felgo Hot Reload configuration file

#### CMake

CMake creates the required `hot_reload_config.json` file automatically. There's nothing you have to do.

#### qmake

Copy or rename `hot_reload_config_qmake.json` to `hot_reload_config.json`.

### 3. Running

- Open the FelgoHotReload GUI application from the repository package or installation and select the `FelgoHotReloadDemo` folder within the opening file dialog (your project directory).
- Run your application and select the “Connect to Local” option. The project loads up.
- Edit the QML code of your application and see changes to the running applications.

