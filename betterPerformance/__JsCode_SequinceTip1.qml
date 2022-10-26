import QtQuick 2.15
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
    width: 200
    height: 200

    Component.onCompleted: {
        // bad
        var t0 = new Date();
        qrealListProperty.length = 100;
        for (var i = 0; i < 500; ++i) {
            for (var j = 0; j < 100; ++j) {
                qrealListProperty[j] = j;
            }
        }
        var t1 = new Date();
        console.log("elapsed: " + (t1.valueOf() - t0.valueOf()) + " milliseconds");

        // good
        var t2 = new Date();
        var someData = [1.1, 2.2, 3.3]
        someData.length = 100;
        for (var i2 = 0; i2 < 500; ++i2) {
            for (var j2 = 0; j2 < 100; ++j2) {
                someData[j2] = j2;
            }
            qrealListProperty = someData;
        }
        var t3 = new Date();
        console.log("elapsed: " + (t3.valueOf() - t2.valueOf()) + " milliseconds");
    }
}
