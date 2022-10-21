QT += quick

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    02/ExComponent.qml \
    02/LineEdit.qml \
    02/NewCheckBox.qml \
    02/NewLineEdit.qml \
    02/T_AniImg.qml \
    02/T_ContainsMouse.qml \
    02/T_Drag.qml \
    02/T_Flickable.qml \
    02/T_KeyNavigation.qml \
    02/T_Keys.qml \
    02/T_Module_checked_main.qml \
    02/T_Module_main.qml \
    02/T_Module_new_main.qml \
    02/T_MouseArea.qml \
    02/T_SignalHandler_exam1.qml \
    02/T_SignalHandler_exam2.qml \
    02/T_SignalHandler_exam3.qml \
    02/T_SignalHandler_exam4.qml \
    02/T_TextInput.qml \
    02/T_application.qml \
    02/T_bouncing-ball1.qml \
    02/T_bouncing-ball2.qml \
    02/T_bouncing-ball3.qml \
    02/T_dynamic_component.qml \
    02/T_dynamic_main.qml \
    02/T_js_main.qml \
    02/T_key_main.qml \
    02/T_main.qml \
    02/T_rowlayout.qml \
    02/T_square.qml \
    02/T_state-when.qml \
    02/T_state.qml \
    02/T_status.qml \
    02/T_systempalette.qml \
    02/T_transition-rotate.qml \
    02/T_transition.qml \
    02/T_value_change.qml \
    02/js/jslib.js \
    02/keyreader.qml \
    02/menu1.qml \
    02/menu2.qml \
    02/myitem.qml \
    02/page1.qml \
    04/file.xml \
    04/grid_exam_1.qml \
    04/grid_exam_ani.qml \
    04/item.xml \
    04/list-view-header-footer.qml \
    04/listmodel_exam_1.qml \
    04/listmodel_exam_2.qml \
    04/rss.xml \
    04/xml_exam.qml \
    images/101.JPG \
    images/102.JPG \
    images/103.JPG \
    images/104.JPG \
    images/T_MouseArea.qml \
    images/ani.gif \
    images/bg.png \
    images/cat.png \
    images/cup structure/coffee_cup_large.png \
    images/cup structure/coffee_cup_outline.png \
    images/cup structure/cup elements/coffee_cup_back.png \
    images/cup structure/cup elements/coffee_cup_coverplate.png \
    images/cup structure/cup elements/coffee_cup_front.png \
    images/cup structure/liquids/liquid_coffee.png \
    images/cup structure/liquids/liquid_foam.png \
    images/cup structure/liquids/liquid_milk.png \
    images/icons/coffees/Americano.png \
    images/icons/coffees/Espresso.png \
    images/icons/coffees/Latte.png \
    images/icons/coffees/Macchiato.png \
    images/icons/coffees/cappucino.png \
    images/icons/contents/coffee.png \
    images/icons/contents/milk.png \
    images/icons/contents/sugar.png \
    images/ui controls/buttons/back/white.png \
    images/ui controls/buttons/go/white.png \
    images/ui controls/line.png
