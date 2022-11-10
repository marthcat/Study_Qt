import QtQuick 2.15
import QtQuick.Controls 2.0
import "../enum" as Enum

Item {
    property bool proSwitchChecked : switchChecked
    property bool proAdressSwitchChecked : addressChecked
    function adressSwitchClicked() {
        proAdressSwitchChecked = !proAdressSwitchChecked
    }

    signal buttonClicked(int idx, string key)
    signal switchCheckedChanged(int idx, string key, bool checked)

//    readonly property real rootInitHeight : contentItem.
    id: root

    Item {
        id: contentItem
        width: parent.width - anchors.margins

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 10

        Switch {
            id: contentSwitch

            visible: elementType === Enum.EnumListElementType.ElemType.Switch
            width: visible ? 80 : 0
//            height: visible ? height : 0
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.margins: 10

            checked: proSwitchChecked
            onCheckedChanged: root.switchCheckedChanged(index, key, checked)
        }

        Column {
            id: contentColumn
            anchors.left: contentSwitch.right
            anchors.right: contentButton.left
            anchors.verticalCenter: parent.verticalCenter
            //anchors.margins: 10
            spacing: 2

            height: implicitHeight

            Text {
                id: contentMainText
                visible: elementType !== Enum.EnumListElementType.ElemType.Title
                height: visible ? font.pixelSize : 0

                font.pixelSize: 28;
                color: "black"
                text: mainText
            }
            Text {
                id: contentSubText
                visible: elementType === Enum.EnumListElementType.ElemType.Title
                         || elementType === Enum.EnumListElementType.ElemType.Switch
                height: visible ? font.pixelSize : 0

                font.pixelSize: 20;
                color:  "gray"
                text: subText
            }
            Rectangle {
                id: contentAddSwitch
                visible: elementType === Enum.EnumListElementType.ElemType.Address
                width: contentColumn.width
                height: 40

                radius: 20
                color:"lightgray"

                Rectangle{
                    id: roadType
                    width: contentColumn.width/2 + radius
                    height:  34 // parent.height - (2*anchor.margins)
                    anchors.margins: 3
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    radius: 17 //parent.radius - anchors.margins
                    Text {
//                        anchors.centerIn: parent
                        text: "도로명 주소"
                        anchors.horizontalCenter : parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        color: !proAdressSwitchChecked ? "white" : "black"
                    }
                    color: !proAdressSwitchChecked ? "#3355bb" : "transparent"
                }
                Rectangle{
                    id: randType
                    width: contentColumn.width/2 + radius
                    height:  34 // parent.height - (2*anchor.margins)
                    anchors.margins: 3
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    radius: 17 //parent.radius - anchors.margins
                    Text {
                        anchors.centerIn: parent
                        text: "지번 주소"
                        color: proAdressSwitchChecked ? "white" : "black"
                    }
                    color: proAdressSwitchChecked ? "#3355bb" : "transparent"
                }

                MouseArea {
                    anchors.fill: proAdressSwitchChecked? roadType: randType
                    onClicked: root.adressSwitchClicked()
                }
            }

            onPositioningComplete: {

            }
        }

        Button {
            id: contentButton

            visible: elementType === Enum.EnumListElementType.ElemType.Button
            width: visible ? 40 : 0
            height: visible ? parent.height : 0

//            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.margins: 10

            flat: true

            text : ">"
            font.bold: true
            font.pixelSize: 26

            onClicked : root.buttonClicked(index, key)
        }

    }

    Rectangle {
        id:splitLine
        width: parent.width  - 10
        height:1
        anchors.top: contentItem.bottom
        anchors.left: parent.left

        color: "darkgray"
    }

    Component.onCompleted: {

//        if (!contetnSwitch.visible)
//            contetnSwitch.height = 0
//        if (!contetnButton.visible)
//            contentButton.height = 0
//        if (!contentAddSwitch.visible)
//            contentAddSwitch.height = 0

        contentItem.height = contentItem.childrenRect.height
        height = contentItem.height + splitLine.height

    }

}


