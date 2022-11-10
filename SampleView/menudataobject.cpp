#include "menudataobject.h"

MenuDataObject::MenuDataObject(QObject *parent)
    : QObject(parent) { }

MenuDataObject::MenuDataObject(const QString &name, const QString &page, QObject *parent )
           : QObject(parent), m_name(name), m_page(page) {}

QString MenuDataObject::name() const { return m_name; }
void MenuDataObject::setName(const QString &name)
{
    if (name != m_name) {
        m_name = name;
        emit nameChanged();
    }
}

QString MenuDataObject::page() const { return m_page; }
void MenuDataObject::setPage(const QString &color)
{
    if (color != m_page) {
        m_page = color;
        emit pageChanged();
    }
}
