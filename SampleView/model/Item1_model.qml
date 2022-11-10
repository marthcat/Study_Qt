import QtQuick 2.15
import "../enum" as Enum

ListModel {

//    ListElement {
//        key: "aaaa"
//        elementType: Enum.EnumListElementType.ElemType.Title
//        mainText: "정보 표시 방식을 설정합니다."
//        subText: "정보 표시 방식을 설정합니다."
//        switchChecked: false
//        addressChecked: false
//    }

    property bool completed: false
    Component.onCompleted: {
        append({ "key": "aaaa"
                   ,"elementType": Enum.EnumListElementType.ElemType.Title
                   ,"mainText": "정보 표시 방식을 설정합니다."
                   ,"subText": "정보 표시 방식을 설정합니다."
                   ,"switchChecked": false
                   ,"addressChecked": false});
        append({ "key": "bbbb"
                   ,"elementType": Enum.EnumListElementType.ElemType.Switch
                   ,"mainText": "차량 속도"
                   ,"subText": "지도 화면에서 차량 속도를 항상 표시합니다."
                   ,"switchChecked": true
                   ,"addressChecked": false});
        append({ "key": "cccc"
                   ,"elementType": Enum.EnumListElementType.ElemType.Switch
                   ,"mainText": "주변 교통정보"
                   ,"subText": "2D, 3D 지도 뷰에서 주변 교통정보를 표시합니다."
                   ,"switchChecked": false
                   ,"addressChecked": false});
        append({ "key": "dddd"
                   ,"elementType": Enum.EnumListElementType.ElemType.Switch
                   ,"mainText": "경로선 교통 정보"
                   ,"subText": "경로선에 교통정보를 표시합니다."
                   ,"switchChecked": true
                   ,"addressChecked": false});
        append({ "key": "eeee"
                   ,"elementType": Enum.EnumListElementType.ElemType.Switch
                   ,"mainText": "경치 좋은 길"
                   ,"subText": "경치 좋은 길을 지도에 표시하고 검색 메뉴로 제공합니다."
                   ,"switchChecked": false
                   ,"addressChecked": false});
        append({ "key": "ffff"
                   ,"elementType": Enum.EnumListElementType.ElemType.Button
                   ,"mainText": "증강 현실 뷰"
                   ,"subText": "test sub"
                   ,"switchChecked": false
                   ,"addressChecked": false});
        append({ "key": "gggg"
                   ,"elementType": Enum.EnumListElementType.ElemType.Button
                   ,"mainText": "주변 시설"
                   ,"subText": "test sub"
                   ,"switchChecked": false
                   ,"addressChecked": false});
        append({ "key": "hhhh"
                   ,"elementType": Enum.EnumListElementType.ElemType.Address
                   ,"mainText": "주소"
                   ,"subText": "test sub"
                   ,"switchChecked": false
                   ,"addressChecked": false});
        append({ "key": "iiii"
                   ,"elementType": Enum.EnumListElementType.ElemType.Button
                   ,"mainText": "유가"
                   ,"subText": "test sub"
                   ,"switchChecked": false
                   ,"addressChecked": false});
        completed = true;
    }
}
