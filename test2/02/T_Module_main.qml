import QtQuick 2.15

Rectangle {
    visible: true; width: 400; height: 100
    color: "lightblue"
    LineEdit // 사용자 정의 QML 타입 명
    {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: 300; height: 50
    }
}
