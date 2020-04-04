import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "../"
StackView {
    id: element
    anchors.fill: parent
    Rectangle{
    anchors.fill: parent
    MouseArea{
        anchors.fill: parent
    }

    Rectangle{
        height: 50
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0


        Text {
            width: 50
            height: 26
            text: qsTr("我的信息")
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
                wodepage.clear()
            }
        }


    }
    }

}

