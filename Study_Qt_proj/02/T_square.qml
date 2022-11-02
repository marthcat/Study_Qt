import QtQuick 2.15

Item {
    visible: true; width: 300; height: 300
    Component {
        id: redSquare
        Rectangle { color: "red"; width: 100; height: 100 }
    }
    Component {
        id: blueSquare
        Rectangle { color: "blue"; width: 100; height: 100 }
    }
    Loader { sourceComponent: redSquare }
    Loader { sourceComponent: blueSquare; x: 100; y: 100}
    Loader { sourceComponent: redSquare; x: 200; y: 200}

}
