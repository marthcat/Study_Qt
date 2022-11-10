import QtQuick 2.15

Item {
    property alias proTextArithmetic: idTextArithmetic
    property alias proInputTextArithmetic: idInputTextArithmetic


//    // Buttons
//    property alias  proBtnLE0: idBtnLE0
//    property alias  proBtnLE1: idBtnLE1
//    property alias  proBtnLE2: idBtnLE2
//    property alias  proBtnLE3: idBtnLE3
//    property alias  proBtnLE4: idBtnLE4
//    property alias  proBtnLE5: idBtnLE5
//    property alias  proBtnLE6: idBtnLE6
//    property alias  proBtnLE7: idBtnLE7
//    property alias  proBtnLE8: idBtnLE8
//    property alias  proBtnLE9: idBtnLE9
//    property alias  proBtnLEPlus: idBtnLEPlus
//    property alias  proBtnLEMinus: idBtnLEMinus
//    property alias  proBtnLEDivision: idBtnLEDivision
//    property alias  proBtnLEMulti: idBtnLEMulti
//    property alias  proBtnLEEqual: idBtnLEEqual
//    property alias  proBtnLEClear: idBtnLEClear
//    signal sigBtn0Click


    Text {
        id: idTextArithmetic
        height: 20

        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.margins: 10

        font.pixelSize: height-4;

        text: "first"

    }

    TextEdit {
        id: idInputTextArithmetic
        height : 32

        anchors.top: idTextArithmetic.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        width: parent.width

        text: "Second"

        font.pixelSize: height-4;

    }

    ListModel {
        id: testModel

        ListElement {
            //id: idBtnLE7
            buttonText : "7"
//            buttonOnCliked : {
//                Console.log("work7")
//            }
        }
        ListElement {
            //id: idBtnLE8
            buttonText : "8"
        }
        ListElement {
            //id: idBtnLE9
            buttonText : "9"
        }
        ListElement {
            //id: idBtnLEDivision
            buttonText : "/"
        }

        ListElement {
            //id: idBtnLE4
            buttonText : "4"
        }
        ListElement {
            //id: idBtnLE5
            buttonText : "5"
        }
        ListElement {
            //id: idBtnLE6
            buttonText : "6"
        }
        ListElement {
            //id: idBtnLEMulti
            buttonText : "*"
        }

        ListElement {
            //id: idBtnLE1
            buttonText : "1"
        }
        ListElement {
            //id: idBtnLE2
            buttonText : "2"
        }
        ListElement {
            //id: idBtnLE3
            buttonText : "3"
        }
        ListElement {
            //id: idBtnLEMinus
            buttonText : "-"
        }

        ListElement {
            //id: idBtnLEClear
            buttonText : "C"
        }
        ListElement {
            //id: idBtnLE0
            buttonText : "0"
        }
        ListElement {
            //id: idBtnLEEqual
            buttonText : "="
        }
        ListElement {
            //id: idBtnLEPlus
            buttonText : "+"
        }
    }

    Grid {
        id: gridKeys
        anchors.top: idInputTextArithmetic.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 10

        columns: 4
        rows :4
        spacing: 4
        property double cellWidth :  (width - ((columns - 1) * spacing)) / columns
        property double cellHeight :  (height- ((rows - 1) * spacing)) / rows

        Repeater {
            model : testModel
            Rectangle {
                Text {
                    anchors.fill: parent
//                    anchors.margins: 4
//                    anchors.centerIn: parent
                    font.pixelSize: 72

                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                    text: buttonText

                    fontSizeMode: Text.Fit

                }

                color: "lightgray"
                radius : 6
                width: gridKeys.cellWidth
                height: gridKeys.cellHeight

                MouseArea{
                    anchors.fill: parent
//                    onClicked: function() {
//                        console.log("qwe")
//                    }
                }
            }
        }
    }



}
