import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: iWindow
    readonly property int sizeMagnifi : 60
    readonly property double widthRatioAll : 21
    readonly property double heightRatioAll : 10

    readonly property double widthOfSide : sizeMagnifi * 5
    readonly property double heightOfBar : sizeMagnifi * 0.75

    readonly property color defaultBackgroundColor : "white"
    readonly property double defaultMargin : 2

    width: widthRatioAll * sizeMagnifi
    height: heightRatioAll * sizeMagnifi
    visible: true

    maximumHeight: height
    minimumHeight: height
    maximumWidth: width
    minimumWidth: width

    title: qsTr("Sample")

    SampleMain {
        visible: true
        anchors.fill: parent
    }

}
