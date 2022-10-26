import QtQuick 2.3
//import Qt.example 1.0

/*
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
  */


SequenceTypeExample {
    id: root

    property int firstBinding: qrealListProperty[1] + 10;
    property int secondBinding: qrealListProperty[1] + 20;
    property int thirdBinding: qrealListProperty[1] + 30;

    Component.onCompleted: {
        var t0 = new Date();
        for (var i = 0; i < 1000; ++i) {
            qrealListProperty[2] = i;
        }
        var t1 = new Date();
        console.log("elapsed: " + (t1.valueOf() - t0.valueOf()) + " milliseconds");
    }
}
