import QtQuick 2.15

Item {
    width: textItem.width + checkImage.width
    Image {
        id: checkImage
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }
    Text {
        id: textItem
        anchors.left: checkImage.right
        anchors.leftMargin: 4
        anchors.verticalCenter: checkImage.verticalCenter
        text: "Option"
        font.pixelSize: checkImage.height - 4
    }

    state: "unchecked"
    states: [
        State {
            name: "checked"
            PropertyChanges {
                target: checkImage;
                source: "../images/ui controls/buttons/go/white.png"
            }
        },
        State {
            name: "unchecked"
            PropertyChanges {
                target: checkImage;
                source: "../images/ui controls/buttons/back/white.png" }
        }
    ]

    MouseArea {
        anchors.fill: checkImage
        onClicked: if (parent.state === "checked") {
                       parent.state = "unchecked";
                       parent.myChecked(false);
                   } else {
                       parent.state = "checked";
                       parent.myChecked(true);
                   }
    }
    signal myChecked(bool checkValue)
}
