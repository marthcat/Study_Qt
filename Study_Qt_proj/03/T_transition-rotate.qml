import QtQuick 2.15

Item {
    width: 150; height: 150; visible: true
    Rectangle {
        width: 150; height: 150; color: "black"
        Image {
            id: player
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            source: "../images/icons/coffees/Latte.png"
        }
        states: [
            State { name: "up"
                PropertyChanges { target: player; rotation: 0 } },
            State { name: "down"
                PropertyChanges { target: player; rotation: 180 } }
        ]
        state: "up"
        transitions: [
            Transition {
                from: "*"; to: "*"
                PropertyAnimation {
                    target: player
                    properties: "rotation"; duration: 1000
                }
            }
        ]
        MouseArea {
            anchors.fill: parent
            onClicked: function() {
                if (parent.state === "up" )
                    parent.state = "down"
                else
                    parent.state = "up"
            }
        }
    }


}
