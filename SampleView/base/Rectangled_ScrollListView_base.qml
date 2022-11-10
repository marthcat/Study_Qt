import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle_base {
    property alias model: listView.model
    property alias delegate: listView.delegate
    property alias highlight: listView.highlight
    property alias highlightFollowsCurrentItem: listView.highlightFollowsCurrentItem
    property alias currentIndex: listView.currentIndex

    ListView {
        id : listView
        anchors.fill: parent

        ScrollBar.vertical: ScrollBar {
//            policy: ScrollBar.AlwaysOn


        }

        clip: true
    }
}
