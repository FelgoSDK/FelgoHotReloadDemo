import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    Rectangle {
        id: box
        anchors.centerIn: parent
        width: 300
        height: 160
        color: "salmon"
        border {
            width: 4
            color: "red"
        }
        radius: 20

        Text {
            anchors.centerIn: parent
            font {
                pointSize: 16
                bold: true
            }
            text: qsTr("<i>Rotating</i><br/>Felgo Hot Reload Demo")
            horizontalAlignment: Text.AlignHCenter
        }

        NumberAnimation on rotation {
            from: 0
            to: 360
            loops: Animation.Infinite
            duration: 10000
            running: true
        }
    }
}
