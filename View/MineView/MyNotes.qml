import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "../"

StackView{
    id: stackView
    anchors.fill: parent

    Rectangle {
        id: rectangle2
        height: 50
        color: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        MouseArea{
            anchors.fill: parent
        }

        Text {
            width: 50
            height: 26
            text: qsTr("我的笔记")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }

        Button {
            anchors.left: parent.left
            anchors.leftMargin: parent.width/50
            anchors.top: parent.top
            anchors.topMargin: parent.width/50
            height: parent.width*3/40
            width: parent.width*3/40
            Image {
                anchors.fill: parent
                source: "qrc:/Images/common/back.png"
            }
            onClicked:{
                MineView.interactive=true
                basebar.visible=true
                wodepage.clear();
            }
        }
    }

    Rectangle{
        id: rectangle
        property string nowtime: Qt.formatDateTime(new Date(), "yyyy-MM-dd  hh-mm-ss  dddd")
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        ListView {
            id: listView
            highlightRangeMode: ListView.ApplyRange
            anchors.fill: parent
            cacheBuffer: 320
            clip: true
            opacity: 1
            transformOrigin: Item.Center
            scale: 1
            rotation: 0
            highlightResizeDuration: 0
            spacing: 15
            model: ListModel {
                ListElement {
                    thename: "标题1"
                    thetext:"内容1"
                    thesource: "qrc:/Images/my/mynotes/mynote.png"
                }

                ListElement {
                    thename: "标题2"
                    thetext:"内容2"
                    thesource: "qrc:/Images/my/mynotes/mynote.png"
                }

                ListElement {
                    thename: "标题3"
                    thetext:"内容3"
                    thesource: "qrc:/Images/my/mynotes/mynote.png"
                }
            }
            delegate: component

        }
        Component{
            id:component
            Rectangle {
                id:rectangle1
                width: parent.width-10
                height: 100
                radius:10
                border.width: 1
                border.color: "#828282"

                Text {
                    id: atext
                    text: thetext
                    anchors.top: name.bottom
                    anchors.topMargin: 5
                    anchors.left: image.right
                    anchors.leftMargin: 5
                    font.pixelSize: 12
                }

                Image {
                    id: image
                    width: 90
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 5
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    source: thesource
                    fillMode: Image.PreserveAspectFit
                 }

                Text {
                    id: name
                    text: thename
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    anchors.left: image.right
                    anchors.leftMargin: 5
                    font.pixelSize: 15
                }

                Text {
                    id: time
                    color: "#848484"
                    text:"2020-3-20 20:10:30 星期五"
                    anchors.left: name.right
                    anchors.leftMargin: 120
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    font.pixelSize: 12
                }
            }
        }
    }

}
