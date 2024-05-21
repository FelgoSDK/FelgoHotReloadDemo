#include "sharedpluginitem.h"

SharedPluginItem::SharedPluginItem(QObject *parent)
    : QObject{parent}
{}

QString SharedPluginItem::pluginName() const
{
  return "Shared QML plugin";
}
