import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "../"

Page {
    id: page

    Text {
        text: qsTr("帮助")
        anchors.centerIn: parent
    }

    Rectangle {
        id: rectangle
        height: 50
        color: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        MouseArea {
            anchors.fill: parent
        }
        Text {
            id: element
            width: 30
            height: 26
            text: qsTr("帮助")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }

        Button {
            anchors.left: parent.left
            anchors.leftMargin: wodepage.width/50
            anchors.top: parent.top
            anchors.topMargin: wodepage.width/50
            height: wodepage.width*3/40
            width: wodepage.width*3/40
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
}
