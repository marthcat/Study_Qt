import QtQuick 2.15

Item {
    visible: true; width: 100; height: 100
    Loader {
        id: myLoader
        source: "myitem.qml"
    }
    Connections {
        target: myLoader.item
//        onMessage : console.log(msg)
        function onMessage(msg) { console.log(msg) }
    }
}
