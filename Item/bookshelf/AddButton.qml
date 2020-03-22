import QtQuick 2.0
import QtQuick.Controls 2.5

Rectangle{
    id:addbtnrec
    width: addmenu.width
    height: addmenu.height
    property alias addmenu: addmenu
    property alias addbtnrec: addbtnrec

    property var itemheight: 1/16*rootwindow.height

    color: "transparent"
    Menu{
        id: addmenu
        width: 2/7*rootwindow.width

        MenuItem {
            id: menuItem1
            anchors.left: parent.left
            font.bold: true
            text: qsTr("本机导入")
            height: itemheight
            indicator:
            Image {
                id: image1
                height: 20
                width: 20
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/Images/shelf/import.png"
            }
            contentItem: Text {
                id: text1
                text: menuItem1.text
                font: menuItem1.font
                opacity: enabled ? 1.0 : 0.3
                color: menuItem1.down ? "#555555" : "#000000"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.left: image1.right
                anchors.leftMargin: 5
            }
            onTriggered: {addbtnrec.visible = false;console.debug("导入本地书籍")}
        }
        MenuItem {
            id: menuItem2
            anchors.left: parent.left
            text: qsTr("WLAN传书")
            font.bold: true
            height: itemheight
            indicator:
            Image {
                id: image2
                height: 20
                width: 20
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/Images/shelf/wifi.png"
            }
            contentItem: Text {
                id: text2
                text: menuItem2.text
                font: menuItem2.font
                opacity: enabled ? 1.0 : 0.3
                color: menuItem2.down ? "#555555" : "#000000"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.left: image2.right
                anchors.leftMargin: 5
            }
            onTriggered: {addbtnrec.visible = false;console.debug("WLAN传书")}
        }
        MenuItem {
            id: menuItem3
            anchors.left: parent.left
            text: qsTr("我的书籍")
            font.bold: true
            height: itemheight
            indicator:
            Image {
                id: image3
                height: 20
                width: 20
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/Images/shelf/folder.png"
            }
            contentItem: Text {
                id: text3
                text: menuItem3.text
                font: menuItem3.font
                opacity: enabled ? 1.0 : 0.3
                color: menuItem3.down ? "#555555" : "#000000"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.left: image3.right
                anchors.leftMargin: 5
            }
            onTriggered: {addbtnrec.visible = false;console.debug("打开我的书籍")}
        }

    }
}
