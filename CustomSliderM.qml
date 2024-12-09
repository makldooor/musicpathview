import QtQuick
import QtQuick.Controls

Item {

    Slider{
        id: positioncontrol
        anchors.fill:  parent
        value: 0.5

        Rectangle{
            id: ro
            width: parent.width
            height: parent.height
            color:  "black"
            radius: 3

            Rectangle{
                implicitWidth: parent.width * positioncontrol.value
                height: parent.height
                color: "white"
                radius: 3

            }
        }

        handle: Item {}
        onPressedChanged:{
            console.log("YES")
        }
    }
}
