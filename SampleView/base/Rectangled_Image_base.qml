import QtQuick 2.15

Rectangle_base {
    property alias source: imageItem.source
    property alias fillMode: imageItem.fillMode

    Image {
        id: imageItem

        anchors.fill: parent

    }
}
