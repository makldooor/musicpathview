import QtCore
import QtQuick
import QtQuick.Dialogs
import QtQuick.Layouts
import QtQuick.Controls


Window{
    id: root
    width: 340
    height: 780
    visible: true

    Rectangle{
        color:  "#121212"
        anchors.fill: parent
    }

    ColumnLayout{
        anchors.fill: parent
        spacing: 0

        RowLayout{
            Layout.preferredWidth:root.width
            Layout.preferredHeight:root.height*0.05
            Item{
                Layout.margins: 5
                Layout.alignment: Qt.AlignRight
                implicitHeight: parent.height
                implicitWidth: parent.height

                Rectangle{
                    anchors.fill: parent
                    gradient: Gradient{
                        GradientStop {position: 0.33; color: "#d986ca"}
                        GradientStop {position: 1.0; color: "#f5c4ed"}

                    }
                    radius: width


                    MouseArea{
                        anchors.fill: parent

                        onClicked:{
                            console.log("Clicked")
                            fdialog.open()
                        }
                    }
                }


            }
        }

        MusicPathView{
            Layout.preferredWidth:root.width
            Layout.preferredHeight: root.height*0.475
        }

        Lable{
            Layout.preferredWidth:root.width
            Layout.preferredHeight: root.height*0.075
        }


        Slider{

            id: positioncontrol
            Layout.preferredWidth:root.width - 40
            Layout.preferredHeight: root.height*0.005
            Layout.leftMargin: 20
            Layout.topMargin: 20
            value: 0.5

            Rectangle{
                id: ro
                width: parent.width
                height: parent.height
                color: "#a86aa5"
                radius: 3

                Rectangle{
                    implicitWidth: parent.width * positioncontrol.value
                    height: parent.height
                    gradient: Gradient{
                        GradientStop {position: 0.33; color: "#d986ca"}
                        GradientStop {position: 1.0; color: "#f5c4ed"}

                    }
                    radius: 3
                }
            }

            handle: Item {}
            onPressedChanged:{
                console.log("YES")
            }
        }

        Item{
            Layout.preferredWidth:root.width
            Layout.preferredHeight: root.height*0.395 - 20
            Rectangle{
                anchors.fill: parent
                color: "transparent"
            }
        }
    }

    FileDialog{
        id: fdialog

    }
}
