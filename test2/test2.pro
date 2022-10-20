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
    02/T_ContainsMouse.qml \
    02/T_Drag.qml \
    02/T_Flickable.qml \
    02/T_KeyNavigation.qml \
    02/T_Keys.qml \
    02/T_MouseArea.qml \
    02/T_SignalHandler_exam1.qml \
    02/T_SignalHandler_exam2.qml \
    02/T_TextInput.qml \
    02/T_systempalette.qml \
    02/Test_AniImg.qml \
    02/Test_Rect.qml
