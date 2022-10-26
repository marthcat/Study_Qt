import QtQuick 2.15

Item {
    id:root
    width:400; height:200

    property int accumulatedValue: 0
    Text {
        anchors.fill: parent
        text : root.accumulatedValue.toString()
        onTextChanged: console.log("text binding re-evaluated")
    }

    Component.onCompleted: {
        var someData = [1,2,3,4,5,20];

        var t0 = new Date();

        // bad
        for (var i =0; i< someData.length ; i++)
        {
            accumulatedValue = accumulatedValue+ someData[i];
        }
        var t1 = new Date();

        // good
        var temp = accumulatedValue;
        for (var j = 0; j< someData.length ; j++)
        {
            temp = temp + someData[i];
        }
        accumulatedValue = temp;
        var t2 = new Date();

        onsole.log("Took: " + (t1.valueOf() - t0.valueOf()));
        onsole.log("Took: " + (t2.valueOf() - t1.valueOf()));


    }

}
