import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 400; height: 200

    Rectangle {
        width: 400; height: 200; color: "black"

        Rectangle {
            id: leftRect
            x: 25; y: 25; width: 150; height: 150
            color: focus ? "red" : "darkred"
            KeyNavigation.right: rightRect
            focus: true
        }

        Rectangle {
            id: rightRect
            x: 225; y: 25; width: 150; height: 150
            color: focus ? "#00ff00" : "green"
            KeyNavigation.left: leftRect
        }
    }
}
