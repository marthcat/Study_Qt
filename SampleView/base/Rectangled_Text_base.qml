import QtQuick 2.15

Rectangle_base {

    property alias text: iText.text
    property alias font: iText.font
    property real contentWidth: iText.contentWidth
//    property alias textAnchors: iText.anchors

    width: iText.contentWidth

    Text {
        id : iText
        anchors.verticalCenter: parent.verticalCenter
        anchors.left : parent.left
    }
}
