import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import "./MineView"
import "../common"

StackView{
    id:wodepage

    property bool userLoggedIn: false
    width: 450
    height: 800
//    LoginPage {
//        z: 1
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
        anchors.bottomMargin: parent.height/10
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: parent.width/40
        anchors.left: parent.left
        anchors.leftMargin: parent.width/40

        Button {
            id: button1
            anchors.right: button2.left
            anchors.rightMargin: wodepage.width/50
            anchors.top: parent.top
            anchors.topMargin: wodepage.height/40
            Image {
                anchors.fill: parent
                source: "qrc:/Images/my/ring.png"
            }
            height: wodepage.width*3/40
            width: wodepage.width*3/40
        }

        Button {
            id: button2
            anchors.right: parent.right
            anchors.rightMargin: wodepage.width/50
            anchors.top: parent.top
            anchors.topMargin: wodepage.height/40
            Image {
                anchors.fill: parent
                source: "qrc:/Images/my/setting.png"
            }
            height: wodepage.width*3/40
            width: wodepage.width*3/40
            onClicked: {
                wodepage.push(shezhi)

            }
        }

        Button {
            id: button3
            flat: true
            text: qsTr("我的关注")
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
            text: qsTr("我的发布")
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
        anchors.top: rectangle.bottom
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height/5
        anchors.left: parent.left
        anchors.leftMargin: parent.width/20
        anchors.right: parent.right
        anchors.rightMargin: parent.width/20

        GridLayout {
            anchors.fill: parent
            rows: 2
            columns: 3

            Button {
                id: button5
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.width/6
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
                    MineView.interactive=false
                    basebar.visible=false
                }
            }

            Button {
                id: button6
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.width/6
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
                    MineView.interactive=false
                    basebar.visible=false
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
                    height: wodepage.width/6
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
                    MineView.interactive=false
                    basebar.visible=false
                }
            }

            Button {
                id: button8
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.family: "Courier"
                Image {
                    height: wodepage.width/6
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
                    view.interactive=false
                    bar.visible=false
                }
            }

            Button {
                id: button9
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.width/6
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
                    MineView.interactive=false
                    basebar.visible=false
                }
            }

            Button {
                id: button10
                flat: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Image {
                    height: wodepage.width/6
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
                    MineView.interactive=false
                    basebar.visible=false
                }

            }
        }
    }
    Component{
        id:shuji
        MyBooks{}
    }
    Component{
        id:biji
        MyNotes{}
    }
    Component{
        id:xinxi
        MyInfo{}
    }
    Component{
        id:zhanhu
        MyAccount{}
    }
    Component{
        id:banzhu
        Help{}
    }
    Component{
        id:shezhi
        Setting{}
    }
}


