import QtQuick 2.15
import "base" as Base
import "component" as Comp
import "delegate" as Dele
import "model" as Model

import QtQuick.Controls 2.5
//import QtQuick.Layouts 1.3

Base.View_Item_base {

    // ++ property ++
    property alias proTopBar: topBar

    property alias proMenuScrollListView: menuScrollListView
    property alias proBottomLeftButtons: bottomLeftButtons
//    property alias proItemPage: itemMenuPageArea
//    property alias proItemPageLoader: itemMenuPageAreaLoader
    property alias proItemMenuPageLoaderSource: itemMenuPageAreaLoader.source

//    property alias proSampleImage: sampleImage
    property alias proSampleImageSource: sampleImage.source
//    property alias proBottomRightInfo: bottomRightInfo
    property alias proBottomRightInfoImageSource: bottomRightInfo.imageSource
    property alias proBottomRightInfoText: bottomRightInfo.contentText

    // ++ signal ++
    signal bottomLeftButton1Clicked()
    signal bottomLeftButton2Clicked()
    signal bottomLeftButton3Clicked()

    signal menuItemClicked(int index, string page)

    // ++ call module ++

    Comp.TopBar_component{ // Top Nav Bar
        id: topBar
        width: parent.width
        height: proHeightOfSideItem
        anchors.horizontalCenter: parent.horizontalCenter

        color: "lightgray"
    }

    Comp.BottomLeftButtons_component{ // bottom Left buttons
        id: bottomLeftButtons
        width: proWidthOfSideItem
        height: proHeightOfSideItem
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        color: "lightgray"

        visible: true

        proBackButton.onClicked: bottomLeftButton1Clicked()
        proHomeButton.onClicked:  bottomLeftButton2Clicked()
        proHistButton.onClicked:  bottomLeftButton3Clicked()
    }

    Comp.BottomRightInfo_component{  // bottom Right Info
        id : bottomRightInfo
        width: proWidthOfSideItem
        height: proHeightOfSideItem
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        color: "lightgray"

        visible: true
    }

    component MenuDelegate : Dele.Menu_delegate {
        width: menuScrollListView.width
        onContentClicked: menuItemClicked(index, page)
    }
    Base.Rectangled_ScrollListView_base {
        id : menuScrollListView
        width: proWidthOfSideItem - (2*defaultMargin)

        anchors.top: topBar.bottom
        anchors.bottom : bottomLeftButtons.top
        anchors.left: parent.left
        anchors.margins: defaultMargin

        color: proDefaultColor

        model: menuList //Model.Menu_model{}
        delegate: MenuDelegate{}
    }

    Base.Rectangled_Image_base {
        id: sampleImage
        width: proWidthOfSideItem - (2*defaultMargin)
        anchors.top: topBar.bottom
        anchors.bottom : bottomRightInfo.top
        anchors.right: parent.right
        anchors.margins: defaultMargin

        fillMode: Image.PreserveAspectFit

        border.color: "black"
        radius: 20

        color: proDefaultColor

    }

    Rectangle {
        id: itemMenuPageArea

        anchors.margins: defaultMargin
        anchors.top: topBar.bottom
        anchors.bottom : parent.bottom
        anchors.left: bottomLeftButtons.right
        anchors.right: bottomRightInfo.left

        color: proDefaultColor

        Loader {
            id: itemMenuPageAreaLoader

            anchors.fill: parent
        }
    }


}
