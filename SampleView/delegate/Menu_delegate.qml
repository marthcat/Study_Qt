import QtQuick 2.15


Item {

    property alias splitLineColor : splitLine.color

    signal contentClicked()

    id: root
    height: 80

    Item {
        id: contentText
        width: parent.width
        height : parent.height - 1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins:5

        Text {
            text: name
            height: font.pixelSize

            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 5
            font.pixelSize: 32;

            color: parent.enabled ? "black" : "gray"
        }
    }

    Rectangle {
        id:splitLine
        width: parent.width - 10
        height:1
        anchors.top: contentText.bottom
        anchors.left: parent.left

        color: "darkgray"
    }

    MouseArea {
        id: contentMouse
        anchors.fill: contentText
        hoverEnabled: true

        onClicked: root.contentClicked()
    }
}


