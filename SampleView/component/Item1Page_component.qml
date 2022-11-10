import QtQuick 2.15
import "../base" as Base
import "../delegate" as Dele
import "../model" as Model

Item {

//    signal contentButtonClicked(int index, string page)

    component ItemDelegate : Dele.Item1_delegate {
        width: menuScrollListView.width

//        onContentButtonClicked: contentButtonClicked(index, page)
    }
    Base.Rectangled_ScrollListView_base {
        id : menuScrollListView
        anchors.fill: parent

        color: proDefaultColor

        model: Model.Item1_model{}
        delegate: ItemDelegate{}
    }

}

