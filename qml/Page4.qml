import QtQuick 2.15
import QtQuick.Controls 2.15
import demo.qml.module 1.0

Page {
  Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 160
        color: "darkmagenta"
        border {
            width: 4
            color: "darkviolet"
        }
        radius: 20

      QmlModuleText {
        anchors.centerIn: parent
      }
    }
}
