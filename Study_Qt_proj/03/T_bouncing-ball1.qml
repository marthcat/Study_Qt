import QtQuick 2.15

Rectangle {
    width: 600; height: 300
    visible: true
    color: "lightblue"
    Image {
        source: "../images/ui controls/buttons/back/white.png"
        anchors.horizontalCenter: parent.horizontalCenter
        NumberAnimation on y {
            from: 20; to: 200
            easing.type: "OutBounce"
            duration: 1000
        }
    }


}
