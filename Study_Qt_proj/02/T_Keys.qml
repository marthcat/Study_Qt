import QtQuick 2.15

Rectangle {
    visible: true
    width: 240; height: 200; color: "blue"
    Image {
        id: logo
        x: 20; y: 20
        source: "qrc:/images/icons/coffees/Americano.png"
        transformOrigin: Item.Center
    }
    Keys.onPressed: {
        if (event.key === Qt.Key_Left) {
            logo.rotation = (logo.rotation - 10) % 360
        } else if (event.key === Qt.Key_Right) {
            logo.rotation = (logo.rotation + 10) % 360
        }
    }

    onFocusChanged: {


    }
}
