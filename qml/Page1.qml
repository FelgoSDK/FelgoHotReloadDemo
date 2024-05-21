import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 160
        color: "skyblue"
        border {
            width: 4
            color: "blue"
        }
        radius: 20

        Text {
            anchors.centerIn: parent
            font {
                pointSize: 16
                bold: true
            }
            text: qsTr("Felgo Hot Reload Demo")
        }
    }
}
