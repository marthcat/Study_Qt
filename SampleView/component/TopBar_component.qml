import QtQuick 2.15
import "../base" as Base

Base.Rectangle_base {

//    Base.Rectangled_Image_base {
//        id: iLeftImage
//        height: parent.height
//        width: 100
//        anchors.left: parent.left
//        anchors.verticalCenter: parent.verticalCenter
//    }

    Base.Rectangled_Text_base {
        id: iLeftText
        text: "내비게이션"

        height: parent.height
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter:  parent.verticalCenter

        font.pixelSize: 32
    }

    Base.Rectangled_Text_base {
        id: iRightTime

        width: contentWidth
        height: parent.height

        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter

        font.pixelSize: 28
    }

    Timer {
        interval: 500; running: true; repeat: true
        onTriggered: {

            iRightTime.text = new Date().toLocaleTimeString(Qt.locale())
        }
    }

}
