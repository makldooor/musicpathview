import QtQuick
import QtQuick.Effects
import QtQuick.Controls.Basic


Item {
    id: root

    PathView{
        id: viewk
        anchors.fill: parent
        model: imm
        preferredHighlightBegin : 0.5
        pathItemCount: 3
        preferredHighlightEnd : 0.5
        snapMode: PathView.SnapOneItem

        maximumFlickVelocity: 800

        ListModel{
            id: imm
            ListElement {urlIm: "Lil_Yachty_—_Lil_Boat.jpeg"}
            ListElement {urlIm: "Jeffery_young_thug.jpg"}
            ListElement {urlIm: "Nectar.png"}
            ListElement {urlIm: "Ballads_1.png"}
        }

        property int swid: Math.max(root.height, 300)

        Component{
            id: cdelegate

            Item{
                implicitWidth: viewk.swid
                implicitHeight: viewk.swid
                scale: PathView.iconScale
                opacity: PathView.iconOpacity


                Image{
                    id: srcImg
                    anchors.fill: parent
                    visible: false
                    source: model.urlIm
                }

                MultiEffect{
                    source: srcImg
                    anchors.fill: parent
                    maskEnabled: true
                    maskSource: srcmask
                }

                Item{
                    id: srcmask

                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    layer.enabled: true
                    visible: false

                    Rectangle{
                        width: srcImg.width
                        height: srcImg.height
                        radius: 10
                        color: "black"
                    }
                }

            }
        }

        delegate: cdelegate
        path: Path{
            startX: -root.height*0.65
            startY: root.height/2
            PathPercent {value: 0.0}
            PathAttribute { name: "iconScale"; value: 0.6}
            PathAttribute { name: "iconOpacity"; value: 0.5}
            PathLine {x: (root.width)/2; y: root.height/2}
            PathAttribute { name: "iconScale"; value: 0.75}
            PathAttribute { name: "iconOpacity"; value: 1.0}
            PathLine {x: root.width + root.height*0.65; y: root.height/2}
            PathAttribute { name: "iconOpacity"; value: 0.5}
            PathAttribute { name: "iconScale"; value: 0.6}
            PathPercent {value: 1.0}
        }
    }

}
