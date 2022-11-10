import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import "../base" as Base

Base.Rectangle_base {
    property double proButtonsSpecing: 10
    property double proButtonsSizeWidth: 100
    property double proButtonsSizeHeight: height

    property alias proBackButton: back
    property alias proHomeButton: home
    property alias proHistButton: hist

    Row{
        id: iRow
        anchors.centerIn: parent
        spacing: proButtonsSpecing


        Button {
            id: back
            width: proButtonsSizeWidth
            height: proButtonsSizeHeight
            anchors.verticalCenter: parent.verticalCenter

            flat: true

            icon.name: "back"
            icon.source: "../image/btn_home_100.png"
        }

        Button {
            id: home
            width: proButtonsSizeWidth
            height: proButtonsSizeHeight
            anchors.verticalCenter: parent.verticalCenter

            flat: true

            icon.name: "home"
            icon.source: "../image/btn_home_100.png"
        }

        Button {
            id: hist
            width: proButtonsSizeWidth
            height: proButtonsSizeHeight
            anchors.verticalCenter: parent.verticalCenter

            flat: true

            icon.name: "home"
            icon.source: "../image/btn_home_100.png"
        }

    }
}
