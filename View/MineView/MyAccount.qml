import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "../"

StackView{
    id:shezhi
    anchors.fill: parent
    Rectangle{
        anchors.fill: parent
        MouseArea {
            anchors.fill: parent
        }
    Rectangle {
        id: rectangle5
        height: 50
        color: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        Text {
            id: element
            x: 308
            y: 9
            width: 50
            height: 26
            text: qsTr("我的账户")
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

    Rectangle {
        id: rectangle
        height: 40
        color: "#ffffff"
        border.color: "#000000"
        border.width: 1
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 50
        Layout.preferredHeight: 42
        Layout.preferredWidth: 200

        Image {
            id: image
            width: 40
            height: 38
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: ""
        }

        Text {
            id: element0
            y: 22
            text: qsTr("昵称")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: image.right
            anchors.leftMargin: 0
            font.pixelSize: 12
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle1
        height: 40
        color: "#ffffff"
        border.color: "#000000"
        border.width: 1
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: rectangle.bottom
        anchors.topMargin: 0
        Layout.preferredHeight: 37
        Layout.preferredWidth: 200

        Image {
            id: image1
            width: 40
            height: 38
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: ""
        }

        Text {
            id: element1
            y: 12
            text: qsTr("手机号码")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: image1.right
            anchors.leftMargin: 0
            font.pixelSize: 12
        }

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle2
        height: 40
        color: "#ffffff"
        border.color: "#000000"
        border.width: 1
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: rectangle1.bottom
        anchors.topMargin: 0
        Layout.preferredHeight: 34
        Layout.preferredWidth: 200

        Image {
            id: image2
            width: 40
            height: 38
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: ""
        }

        Text {
            id: element2
            y: 15
            text: qsTr("修改密码")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: image2.right
            anchors.leftMargin: 0
            font.pixelSize: 12
        }

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            onClicked: {


            }
        }
    }

    Rectangle {
        id: rectangle3
        height: 40
        border.color: "#000000"
        border.width: 1
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: rectangle2.bottom
        anchors.topMargin: 0
        Layout.preferredHeight: 200
        Layout.preferredWidth: 200

        Image {
            id: image3
            width: 40
            height: 38
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: ""
        }

        Text {
            id: element3
            y: 15
            text: qsTr("最近登录 ")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: image3.right
            anchors.leftMargin: 0
            font.pixelSize: 12
        }

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle4
        height: 40
        color: "#ffffff"
        border.color: "#000000"
        border.width: 1
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: rectangle3.bottom
        anchors.topMargin: 0

        Image {
            id: image4
            width: 40
            height: 40
            fillMode: Image.PreserveAspectFit
            source: ""
        }

        Text {
            id: element4
            y: 15
            text: qsTr("安全中心")
            anchors.left: image4.right
            anchors.leftMargin: 0
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }
    }
    }





}
