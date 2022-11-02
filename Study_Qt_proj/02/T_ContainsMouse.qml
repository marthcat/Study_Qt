import QtQuick 2.15

Item {
    visible: true; width: 200; height: 200
    Rectangle {
        width: 200; height: 200; color: "lightblue"
        Rectangle {
            x: 50; y: 50; width: 100; height: 100
            color: mouseArea.containsMouse ? "green" : "white"
            MouseArea {
                id: mouseArea
                anchors.fill: parent;
                hoverEnabled: true
            }
        }
    }

}
