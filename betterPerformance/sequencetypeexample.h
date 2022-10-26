#ifndef SEQUENCETYPEEXAMPLE_H
#define SEQUENCETYPEEXAMPLE_H

#include <QQuickItem>

namespace text_example {
class SequenceTypeExample : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY (QList<qreal> qrealListProperty READ qrealListProperty WRITE setQrealListProperty NOTIFY qrealListPropertyChanged)

public:
    SequenceTypeExample() : QQuickItem() { m_list << 1.1 << 2.2 << 3.3; }
    ~SequenceTypeExample() {}

    QList<qreal> qrealListProperty() const { return m_list; }
    void setQrealListProperty(const QList<qreal> &list) { m_list = list; emit qrealListPropertyChanged(); }

signals:
    void qrealListPropertyChanged();

private:
    QList<qreal> m_list;
};

}

#endif // SEQUENCETYPEEXAMPLE_H
