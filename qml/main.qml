import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello Felgo Hot Reload!")

    StackLayout {
        id: stack
        anchors.fill: parent
        currentIndex: 0

        Page1 { }

        Page2 { }

        Page3 { }

        Page4 { }

        Page5 { }
    }

    footer: TabBar {
        Repeater {
            model: [
              qsTr("Simple page"),
              qsTr("Rotating text page"),
              qsTr("Static plugin page"),
              qsTr("Application module page"),
              qsTr("Shared plugin page")
            ]

            TabButton {
                text: modelData
                checked: index === stack.currentIndex
                onClicked: {
                    if (stack.currentIndex != index) {
                        stack.currentIndex = index
                        console.log("Switch to page: ", index + 1)
                    }
                }
            }
        }
    }
}
