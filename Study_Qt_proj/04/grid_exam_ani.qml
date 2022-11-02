import QtQuick 2.15

Item {
    width: view.contentWidth; height: view.contentHeight; visible: true
    ListModel {
        id: gridModel
        ListElement { name: "Picture 1"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 2"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 3"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
        ListElement { name: "Picture 4"; frame: "/images/icons/coffees/Americano.png" }
    }
//    Component {
//        id: highlight
//        Rectangle {
//            width: view.cellWidth; height: view.cellHeight
//            color: "lightsteelblue"; radius: 5
//            x: view.currentItem.x
//            y: view.currentItem.y
//            Behavior on x { SpringAnimation { spring: 3; damping: 0.2 } }
//            Behavior on y { SpringAnimation { spring: 3; damping: 0.2 } }
//        }
//    }
    GridView {
        id: view
        width: 400; height: 200
        cellWidth: 80; cellHeight: 80
        model: gridModel
        delegate: Column {
            Image {
                width: 60; height: 60; source: frame;
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: name;
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
//        highlight: highlight      //
        highlight: Rectangle {
            width: view.cellWidth; height: view.cellHeight
            color: "lightsteelblue"; radius: 5
            x: view.currentItem.x
            y: view.currentItem.y
            Behavior on x { SpringAnimation { spring: 3; damping: 0.2 } }
            Behavior on y { SpringAnimation { spring: 3; damping: 0.2 } }
        }
        highlightFollowsCurrentItem: true // 현재 아이템 Size가 일치하도록 설정
        focus: true
    }


}
