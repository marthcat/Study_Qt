import QtQuick 2.15

Rectangle {
    id: root
    visible: true; width: 400; height: 150
    color: "lightblue"
    NewCheckBox {
        id: sss
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
//        //signal Type 1
//        onMyChecked: checkValue ? root.color = "red"
//                                : root.color = "lightblue"

//        // signal Type 2
//        onMyChecked: function (checkValue) {
//            if (checkValue)
//                root.color = "red"
//            else
//                root.color = "lightblue"
//        }

        onMyChecked: myCheckedOnMain
    }

    function myCheckedOnMain(checkValue) {
        if (checkValue)
            root.color = "red"
        else
            root.color = "lightblue"
    }


}
