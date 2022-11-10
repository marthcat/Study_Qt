import QtQuick 2.15
import "delegate" as Dele

SampleMainView {
    id: sampleMain

    // ++ ViewItemBase property ++
    proHeightOfSideItem : iWindow.heightOfBar
    proWidthOfSideItem : iWindow.widthOfSide
    proDefaultColor : iWindow.defaultBackgroundColor
    proDefaultMargin: iWindow.defaultMargin

    color: proDefaultColor

    // ++ Object Setting ++
    proSampleImageSource: "/image/cat320.png"

    proBottomRightInfoImageSource: "qrc:/image/sunny.png"
    proBottomRightInfoText: "Sunny day!"

    // ++ function ++
    function menuPageShow(index, page){
        console.log("clicked : " , index, " - ", page)
        sampleMain.proItemMenuPageLoaderSource = page
    }

    // ++ Object Event ++
    onBottomLeftButton1Clicked: { console.log("button1") }
    onBottomLeftButton2Clicked: { console.log("button2") }
    onBottomLeftButton3Clicked: { console.log("button3") }

    onMenuItemClicked: menuPageShow(index, page)

    Component.onCompleted: {
        menuPageShow(0, menuList[0].page )
    }
}
