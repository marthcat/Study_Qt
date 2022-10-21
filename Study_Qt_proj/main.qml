import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    title: qsTr("Hello World")

    id : test2_window

    Loader {
        id: test_qml
        source: "04/xml_exam.qml"
        onLoaded: {
            test2_window.width = test_qml.width
            test2_window.height = test_qml.height
            test_qml.focus = true
        }
    }
}

//import "02"
//Window {
//    visible: true; width: 300; height: 300
////    T_SignalHandler_exam3
////    {
////        width: 360; height: 360
////        onActivated: console.log("Activated at " + xPosition + "," + yPosition)
////        onDeactivated: console.log("Deactivated!")
////    }
//    T_bouncing-ball1{

//    }
//}
