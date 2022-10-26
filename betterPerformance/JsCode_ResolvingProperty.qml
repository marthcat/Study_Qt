import QtQuick 2.15

Item {
    width:400; height:200

    Rectangle {
        id:rect; anchors.fill:parent; color:'blue'
    }

    function prinntValue(which, value) {
        console.log(which + '=' + value )
    }

    Component.onCompleted: {
        var t0 =new Date();

        // bad
        for (var i=0; i<1000; ++i) {
            printValue("red", rect.color.r);
            printValue("green", rect.color.g);
            printValue("blue", rect.color.b);
            printValue("alpha", rect.color.a);
        }
        var t1 = new Date();

        // good
        for (var j=0 ; j<1000 ; ++j) {
            var rectColor2 = rect.color; // resolve the common base : inside the roop
            printValue("red", rectColor2.r);
            printValue("green", rectColor2.g);
            printValue("blue", rectColor2.b);
            printValue("alpha", rectColor2.a);
        }
        var t2 = new Date();

        // better
        var rectColor = rect.color; // resolve the common base : outside the roop
        for (var k=0; k<1000; ++k) {
            printValue("red", rectColor.r);
            printValue("green", rectColor.g);
            printValue("blue", rectColor.b);
            printValue("alpha", rectColor.a);
        }
        var t3 = new Date();

        console.log("Took // direct: " + (t1.valueOf() - t0.valueOf()) + " milliseconds for 1000 iterations.");
        console.log("Took // inside the roop: " + (t2.valueOf() - t1.valueOf()) + " milliseconds for 1000 iterations.");
        console.log("Took // outside the roop: " + (t3.valueOf() - t2.valueOf()) + " milliseconds for 1000 iterations.");
    }

}
