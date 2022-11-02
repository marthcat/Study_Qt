import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Rectangle {
    width: parent.width; height: parent.height;
    visible: true
    border.color: "red"
    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 0
        Rectangle {
            color: 'blue'
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: text1.width
            Layout.minimumWidth: text1.width
//            Layout.maximumWidth: 300
//            Layout.minimumHeight: 150
//            Layout.maximumHeight: 300
            Text {
                id: text1
                anchors.centerIn: parent; color: "white"
                text: parent.width + 'x' + parent.height
            }
        }
        Rectangle {
            color: 'green'
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: text2.width
            Layout.minimumWidth: text2.width
//            Layout.maximumWidth: 300
//            Layout.minimumHeight: 50
//            Layout.maximumHeight: 300
            Text {
                id: text2
                anchors.centerIn: parent; color: "white"
//                text: parent.width + 'x' + parent.height
                text: "----------------------------------------------------------------"
            }
        }
    }
}
