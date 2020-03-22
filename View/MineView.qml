import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import "./MineView"
import "../common"

StackView{
    id:wodepage
    width: 400
    height: 500

    property bool userLoggedIn: false
//    LoginView {
//      z: 1
//      visible: opacity > 0
//      enabled: visible
//      opacity: userLoggedIn ? 0 : 1
//      onLoginSucceeded: userLoggedIn = true

//      Behavior on opacity { NumberAnimation { duration: 250 } }
//    }
    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.bottom: parent.verticalCenter
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: parent.width/40
        anchors.left: parent.left
        anchors.leftMargin: parent.width/40

        IconButton {
            id: button1
            anchors.right: button2.left
            anchors.rightMargin: wodepage.width/50
            anchors.top: parent.top
            anchors.topMargin: wodepage.height/40
            Image {
                anchors.fill: parent
                source: "qrc:/Images/my/ring.png"
            }
            height: wodepage.height*3/50
            width: wodepage.width*3/40
        }

        IconButton {
            id: button2
            anchors.right: parent.right
            anchors.rightMargin: wodepage.width/50
            anchors.top: parent.top
            anchors.topMargin: wodepage.height/40
            Image {
                anchors.fill: parent
                source: "qrc:/Images/my/setting.png"

            }
            height: wodepage.height*3/50
            width: wodepage.width*3/40
            onClicked: {
                wodepage.push(shezhi)

            }
        }

        Button {
            id: button3
            flat: true
            Text {
                id: myfollow
                anchors.centerIn: parent
                text: qsTr("我的关注")
            }
            anchors.bottom: parent.bottom
            anchors.bottomMargin: wodepage.height/50
            anchors.right: parent.horizontalCenter
            anchors.rightMargin: wodepage.width*3/40
            height: wodepage.height*3/50
            width: wodepage.width/4
        }

        Button {
            id: button4
            flat: true
            Text {
                id: mypush
                anchors.centerIn: parent
                text: qsTr("我的发布")
            }
            anchors.bottom: parent.bottom
            anchors.bottomMargin: wodepage.height/50
            anchors.left: parent.horizontalCenter
            anchors.leftMargin: wodepage.width*3/40
            height: wodepage.height*3/50
            width: wodepage.width/4
        }

        Image {
            id: image
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: wodepage.height*4/25
            width: wodepage.width/5
            fillMode: Image.PreserveAspectFit
            source: "qrc:/Images/my/headimg.png"
        }

        Text {
            id: element
            text: qsTr("名字")
            anchors.top: image.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: image.horizontalCenter
            font.pixelSize: wodepage.width/40+wodepage.height/50
        }
    }

    Rectangle {
        id: rectangle1
        color: "#ffffff"
        anchors.top: parent.verticalCenter
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height/20
        anchors.left: parent.left
        anchors.leftMargin: parent.width/20
        anchors.right: parent.right
        anchors.rightMargin: parent.width/20

        GridLayout {
            anchors.fill: parent
            rows: 2
            columns: 3

            IconButton {
                id: button5
//                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.height*3/25
                    width: wodepage.width/6
                    anchors.centerIn: parent
                    source: "qrc:/Images/my/mybooks.png"
                }
                Text{
                    text:qsTr("我的书籍")
                    font.pixelSize: wodepage.width/45+wodepage.height/55

                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: button5.horizontalCenter
                }
                Layout.preferredHeight: 80
                Layout.preferredWidth: 80
                onClicked: {
                    wodepage.push(shuji)

                }
            }

            Button {
                id: button6
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.height*3/25
                    width: wodepage.width/6
                    anchors.centerIn: parent
                    source: "qrc:/Images/my/note.png"
                }
                Text{
                    text:qsTr("我的笔记")
                    font.pixelSize: wodepage.width/45+wodepage.height/55
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: button6.horizontalCenter
                }
                Layout.preferredHeight: 80
                Layout.preferredWidth: 80
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: {
                    wodepage.push(biji)

                }
            }

            Button {
                id: button7
                flat: true
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.height*3/25
                    width: wodepage.width/6
                    anchors.centerIn: parent
                    source: "qrc:/Images/my/myinfo.png"
                }
                Text{
                    text:qsTr("我的信息")
                    font.pixelSize: wodepage.width/45+wodepage.height/55
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: button7.horizontalCenter
                }
                Layout.preferredHeight: 80
                Layout.preferredWidth: 80
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                onClicked: {
                    wodepage.push(xinxi)

                }
            }

            Button {
                id: button8
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.family: "Courier"
                Image {
                    height: wodepage.height*3/25
                    width: wodepage.width/6
                    anchors.centerIn: parent
                    source: "qrc:/Images/my/myaccount.png"
                }
                Text{
                    text:qsTr("我的账户")
                    font.pixelSize: wodepage.width/45+wodepage.height/55
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: button8.horizontalCenter
                }
                Layout.preferredHeight: 80
                Layout.preferredWidth: 80
                onClicked: {
                    wodepage.push(zhanhu)

                }
            }

            Button {
                id: button9
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.height*3/25
                    width: wodepage.width/6
                    anchors.centerIn: parent
                    source: "qrc:/Images/my/sign.png"
                }
                Text{
                    text:qsTr("签到")
                    font.pixelSize: wodepage.width/45+wodepage.height/55
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: button9.horizontalCenter
                }
                Layout.preferredHeight: 80
                Layout.preferredWidth: 80
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: {
                    wodepage.push()

                }
            }

            Button {
                id: button10
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.height*3/25
                    width: wodepage.width/6
                    anchors.centerIn: parent
                    source: "qrc:/Images/my/help_big.png"
                }
                Text{
                    text:qsTr("帮助")
                    font.pixelSize: wodepage.width/45+wodepage.height/55
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: button10.horizontalCenter
                }
                Layout.preferredHeight: 80
                Layout.preferredWidth: 80
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                onClicked: {
                    wodepage.push(banzhu)

                }

            }
        }
    }
    Component{
        id:shuji
        Rectangle{
            anchors.fill: parent

            Text {
                width: 50
                height: 26
                text: qsTr("我的书籍")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }

            Button {
                anchors.left: parent.left
                anchors.leftMargin: wodepage.width/50
                anchors.top: parent.top
                anchors.topMargin: wodepage.height/40
                height: wodepage.height*3/50
                width: wodepage.width*3/40
                Image {
                    anchors.fill: parent
                    source: "qrc:/Images/common/back.png"
                }
                onClicked:{
                    wodepage.clear();
                }
            }
            MyBooks{
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }
        }
    }
    Component{
        id:biji
        Rectangle{
            anchors.fill: parent

            Text {
                width: 50
                height: 26
                text: qsTr("我的笔记")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }

            Button {
                anchors.left: parent.left
                anchors.leftMargin: wodepage.width/50
                anchors.top: parent.top
                anchors.topMargin: wodepage.height/40
                height: wodepage.height*3/50
                width: wodepage.width*3/40
                Image {
                    anchors.fill: parent
                    source: "qrc:/Images/common/back.png"
                }
                onClicked:{
                    wodepage.clear();
                }
            }
            MyNotes{
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }
        }
    }
    Component{
        id:xinxi
        Rectangle{
            anchors.fill: parent
            Text {
                width: 50
                height: 26
                text: qsTr("我的信息")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }

            Button {
                anchors.left: parent.left
                anchors.leftMargin: wodepage.width/50
                anchors.top: parent.top
                anchors.topMargin: wodepage.height/40
                height: wodepage.height*3/50
                width: wodepage.width*3/40
                Image {
                    anchors.fill: parent
                    source: "qrc:/Images/common/back.png"
                }
                onClicked:{
                    wodepage.clear();
                }
            }
            MyInfo{
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }
        }
    }
    Component{
        id:zhanhu
        Rectangle{
            id:rectangle2
            anchors.fill: parent

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
                anchors.topMargin: wodepage.height/40
                height: wodepage.height*3/50
                width: wodepage.width*3/40
                Image {
                    anchors.fill: parent
                    source: "qrc:/Images/common/back.png"
                }
                onClicked:{
                    wodepage.clear();
                }
            }
            MyAccount{
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }
        }
    }
    Component{
        id:banzhu
        Rectangle{
            anchors.fill: parent

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
                anchors.topMargin: wodepage.height/40
                height: wodepage.height*3/50
                width: wodepage.width*3/40
                Image {
                    anchors.fill: parent
                    source: "qrc:/Images/common/back.png"
                }
                onClicked:{
                    wodepage.clear();
                }
            }
            Help{
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }
        }
    }
    Component{
        id:shezhi
        Rectangle{
            id:rectangle2
            anchors.fill: parent

            Text {
                width: 30
                height: 26
                text: qsTr("设置")
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                anchors.left: parent.left
                anchors.leftMargin: wodepage.width/50
                anchors.top: parent.top
                anchors.topMargin: wodepage.height/40
                height: wodepage.height*3/50
                width: wodepage.width*3/40
                Image {
                    anchors.fill: parent
                    source: "qrc:/Images/common/back.png"
                }
                onClicked:{
                    wodepage.clear();
                }
            }

            Setting{
                anchors.top: parent.top
                anchors.topMargin: 40
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }
        }
    }
}


