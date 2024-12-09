import QtQuick
import QtQuick.Layouts
import QtQuick.Effects

Item {

    Rectangle{
        color: "transparent"
        anchors.fill: parent
    }


    RowLayout{
        anchors.fill: parent

        Item{
            Layout.leftMargin: 5
            Layout.preferredHeight:  parent.height
            Layout.preferredWidth: parent.height

            Image{
                id: srcImg
                height: parent.height
                width: parent.height
                visible: false
                source: "kk.png"
            }

            MultiEffect{
                source: srcImg
                anchors.fill: srcImg
                maskEnabled: true
                maskSource: srcmask
            }

            Item{
                id: srcmask

                implicitWidth: srcImg.width
                implicitHeight: srcImg.height
                layer.enabled: true
                visible: false

                Rectangle{
                    width: srcImg.height
                    height: srcImg.height
                    radius: srcImg.height
                    color: "black"
                }
            }
        }

        Item{
            Layout.preferredWidth: parent.width - parent.height
            Layout.preferredHeight:parent.height


            Rectangle{
                anchors.fill: parent
                color: "transparent"

                Text{
                    width: parent.width
                    height: parent.height/2
                    font.pointSize: 20
                    color: "white"
                    text: "чипи чипи чапа чапа"
                }
            }
        }
    }

}
