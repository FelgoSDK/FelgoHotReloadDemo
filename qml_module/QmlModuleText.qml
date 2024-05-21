import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    Text {
        id: name
        anchors.centerIn: parent
        font.pixelSize: 20
        text: qsTr("Text from module file")
    }
}
