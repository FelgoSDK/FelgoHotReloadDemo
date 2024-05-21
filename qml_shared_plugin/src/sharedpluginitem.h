#ifndef SHAREDPLUGINITEM_H
#define SHAREDPLUGINITEM_H

#include <QObject>
#include <QQmlEngine>

class SharedPluginItem : public QObject
{
  Q_OBJECT
  QML_ELEMENT
  QML_SINGLETON
  Q_PROPERTY(QString pluginName READ pluginName CONSTANT)
public:
  explicit SharedPluginItem(QObject *parent = nullptr);

  QString pluginName() const;

signals:

private:
};

#endif // SHAREDPLUGINITEM_H
