import QtQuick 2.15

Item {
    Rectangle {
        id: rect1
        x: 20
        width: 200; height: 200
    }
    Rectangle {
        id: rect2
        height: 200
        anchors.left: rect1.left
        anchors.top: rect1.bottom
        anchors.right: rect1.right
        anchors.rightMargin: 20
    }
}
