import QtQuick 2.15

Item {
    width: 300
    height: grid.contentHeight
    visible: true
    ListModel {
        id: gridModel
        ListElement { name: "Picture 1"; frame: "../images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 2"; frame: "../images/icons/coffees/cappucino.png" }
        ListElement { name: "Picture 3"; frame: "../images/icons/coffees/Espresso.png" }
        ListElement { name: "Picture 4"; frame: "../images/icons/coffees/Latte.png" }
        ListElement { name: "Picture 5"; frame: "../images/icons/coffees/Macchiato.png" }
    }
    Component {
        id: contactDelegate
        Item {
            width: grid.cellWidth
            height: grid.cellHeight
            Column {
                anchors.fill: parent
                Image {
                    width: 80; height: 80
                    fillMode: Image.Stretch
                    source: frame;
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: name;
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
    GridView {
        id: grid
        anchors.fill: parent
        cellWidth: 90; cellHeight: 110
        model: gridModel
        delegate: contactDelegate
        highlight: Rectangle {
            color: "lightsteelblue"; radius: 5
        }
        focus: true
    }
}
