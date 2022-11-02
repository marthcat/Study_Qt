import QtQuick 2.15

Rectangle {
    width: 150; height: 250
    Rectangle {
        id: onElement
        x: 25; y: 15; width: 100; height: 100
    }
    Rectangle {
        id: offElement
        x: 25; y: 135; width: 100; height: 100
    }

    state: "on"
    states: [
        State {
            name: "on"
            PropertyChanges { target: onElement; color: "red" }
            PropertyChanges { target: offElement; color: "black" }
        },
        State {
            name: "off"
            PropertyChanges { target: onElement; color: "black" }
            PropertyChanges { target: offElement; color: "green" }
        }
    ]
    transitions: [
        Transition {
            from: "off"; to: "on"
            PropertyAnimation {
                target: onElement
                properties: "color"; duration: 400
            }
            PropertyAnimation {
                target: offElement
                properties: "color"; duration: 400
            }
        },
        Transition {
            from: "on"; to: "off"
            PropertyAnimation {
                target: onElement
                properties: "color"; duration: 400
            }
            PropertyAnimation {
                target: offElement
                properties: "color"; duration: 400
            }
        }
    ]

    MouseArea {
        anchors.fill: parent
        onClicked: parent.state === "on" ?
                       parent.state = "off" : parent.state = "on"
    }
}
