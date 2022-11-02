import QtQuick 2.15

Item {
    visible: true
    width: animation.width
    height: animation.height + 8
    AnimatedImage {
        id: animation
        source: "images/ani.gif"
        anchors.top: parent.top
    }
    Rectangle
    {
        property int frames: animation.frameCount
        width: 4; height: 8
        x: (animation.width - width) * animation.currentFrame / frames
        y: animation.height
        color: "red"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(animation.paused) {
                animation.paused = false
            } else {
                animation.paused = true
            }
        }
    }

}
