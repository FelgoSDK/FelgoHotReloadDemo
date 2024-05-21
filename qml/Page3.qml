import QtQuick 2.15
import QtQuick.Controls 2.15
import DemoStaticPlugin 1.0

Page {
  Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 160
        color: "darkolivegreen"
        border {
            width: 4
            color: "darkgreen"
        }
        radius: 20

        QmlStaticPluginText {
          anchors.centerIn: parent
        }
    }
}
