import QtQuick 2.15

Item {
    visible: true; width: 400; height: 112
    Rectangle {
        width: 400; height: 112; color: "lightblue"
        TextInput {
            anchors.left: parent.left; y: 16
            anchors.right: parent.right
            text: "Embedded Programming";
            font.pixelSize: 32
            color: focus ? "black" : "gray"
            focus: true
        }
        TextInput {
            anchors.left: parent.left; y: 64
            anchors.right: parent.right
            text: "Thread Programming";
            font.pixelSize: 32
            color: focus ? "black" : "gray"
        }
    }
}
