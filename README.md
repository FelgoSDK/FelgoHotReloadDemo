# Felgo QML Hot Reload Demo

A demo integration of Felgo Hot Reload to an existing Qt project

To learn more about Felgo Hot Reload, have a look at https://felgo.com/qml-hot-reload

This repository includes two commits:

- An initial commit with a Qt/QML project
- A [commit](https://github.com/FelgoSDK/FelgoHotReloadDemo/commit/master) with the changes applied to add Felgo Hot Reload to the project

## Installing Prerequisites

### 1. Install Qt

We recommend that you use Qt 6.8.3 version with one of the kits:
- `gcc_64` kit on Linux
- `msvc2022_64` kit on Windows
- `macos` kit on macOS

### 2. Install Felgo Hot Reload

You can install Felgo Hot Reload in two ways:

- Download the latest release package of this repository [releases page](https://github.com/FelgoSDK/FelgoHotReloadDemo/releases). This package contains:
  - the Felgo Hot Reload GUI application for
    - **Linux**
    - **Windows**
    - **macOS**
  - the client libraries for the following build kits
    - **GNU/Linux**
      - Qt 6.8.3 `gcc_64`
    - **Windows**
      - Qt 6.8.3 `msvc2022_64`
    - **macOS**
      - Qt 6.8.3 `macos`
- Install with the official Felgo Hot Reload Installer, coming with a free evaluation (see below). Use this option if you are not using Qt 6.8.3, the installer supports a large variety of development kits.

You can evaluate Felgo Hot Reload with desktop development kits without a valid license key.
A valid license key is required if you want to evaluate other development kits, or need more time for the evaluation. You can obtain it with a [free evaluation here](https://felgo.com/qml-hot-reload).

## Running the Project

### 1. Building

We recommend using CMakeLists.txt file to generate build files.

#### Qt Creator

**Generating project files with CMake**

Add the `FELGO_HOT_RELOAD_PATH` variable to the Projects - Build Settings - CMake Details and set it to the Felgo Hot Reload client libraries directory for your selected kit.
Assuming you are using the repository release package on a Linux machine, the path is `../client/6.8.3/gcc_64`

#### Other IDEs

Use your IDE build configuration features to set the `FELGO_HOT_RELOAD_PATH` variable before you generate the project files.
Assuming you are using the release package on a Linux machine, the path is `../client/6.8.3/gcc_64`

Run CMake and build the application like any other.

### 2. Running

- Open the FelgoHotReload GUI application from the repository package or installation.
- Enter the license key. You can skip this step if you want to use Felgo Hot Reload for evaluation purposes.
- Select the `FelgoHotReloadDemo` folder within the opening file dialog (your project directory).
- You can dismiss the configuration steps suggested by the FelgoHotReload GUI application. These changes are already applied in this repository.
- Run your application and select the “Connect Locally” option. The project loads up.
- Edit the QML code of your application and see changes to the running applications.

#### QML modules and plugins support

FelgoHotReload supports hot reloading of qml modules and plugins. Configuration files `hot_reload_config.json` and `felgo_hot_reload_cmake_targets_info.json` are used for this purpose.
These will be generated automatically when running CMake.
