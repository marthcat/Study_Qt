import QtQuick 2.15

Item {
    visible: true; width: 200; height: 200
    Loader {
        anchors.centerIn: parent
        sourceComponent: rect
    }
    Component {
        id: rect
        Rectangle {
            width: 50
            height: 50
            color: "red"
        }
    }
}
