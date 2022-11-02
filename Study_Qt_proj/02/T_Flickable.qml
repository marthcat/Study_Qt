import QtQuick 2.15

Item {
    visible: true; width: 1152; height: 768
    Rectangle {
        width: 800; height: 600
        Flickable {
            id: view
            anchors.fill: parent
            contentWidth: picture.width
            contentHeight: picture.height
            Image {
                id: picture
                source: "/images/bg.png"
            }
        }
    }
}
