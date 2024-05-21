import QtQuick 2.15
import QtQuick.Controls 2.15
import Demo.SharedPlugin 1.0

Text {
  id: name
  anchors.fill: parent
  anchors.margins: 20
  wrapMode: Text.WrapAtWordBoundaryOrAnywhere
  verticalAlignment: Text.AlignVCenter
  font.pixelSize: 20
  text: qsTr("Text from shared plugin: %1").arg(SharedPluginItem.pluginName)
}
