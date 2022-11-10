#ifndef MENUDATAOBJECT_H
#define MENUDATAOBJECT_H

#include <QObject>

class MenuDataObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString page READ page WRITE setPage NOTIFY pageChanged)
public:
    MenuDataObject(QObject *parent=0);
    MenuDataObject(const QString &name,
               const QString &page,
               QObject *parent=0);

    QString name() const;
    void setName(const QString &name);
    QString page() const;
    void setPage(const QString &page);
signals:
    void nameChanged();
    void pageChanged();

private:
    QString m_name;
    QString m_page;
};

#endif // MENUDATAOBJECT_H
