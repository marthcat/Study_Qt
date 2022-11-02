import QtQuick 2.15

Item {
    visible: true; width: 200; height: 200
    Loader {
        id: loader
        focus: true
        source: "keyreader.qml"
    }

}
