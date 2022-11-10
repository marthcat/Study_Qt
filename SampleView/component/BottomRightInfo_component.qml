import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import "../base" as Base

Base.Rectangle_base {
    property alias imageSource: iLeftImage.source
    property alias contentText : iText.text

    Base.Rectangled_Image_base {
        id: iLeftImage
        height: parent.height - 10//(anchors.margins * 2)
        width: height
        anchors.left: parent.left
        anchors.margins: 5
        anchors.verticalCenter: parent.verticalCenter
    }

    Base.Rectangled_Text_base {
        id: iText

        height: parent.height
        anchors.left: iLeftImage.right
        anchors.right: parent.right
        anchors.margins: 5
        anchors.verticalCenter:  parent.verticalCenter

        font.pixelSize: 26
    }


}
