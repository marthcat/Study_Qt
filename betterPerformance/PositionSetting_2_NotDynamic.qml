import QtQuick 2.15

Rectangle {
    width: 60
    height: 60

    Rectangle { // better
        id: fixedPositioning
        x: 20
        y: 20
        width: 20
        height: 20
    }
    Rectangle {
        id: anchorPositioning
        anchors.fill: parent
        anchors.margins: 20
    }
}
