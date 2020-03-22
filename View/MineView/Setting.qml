import QtQuick 2.0
import QtQuick.Layouts 1.0

Rectangle{
    id:shezhi

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
        anchors.topMargin: 0
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
            id: element
            y: 22
            text: qsTr("通用设置")
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
            text: qsTr("隐私设置")
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
            text: qsTr("清理缓存")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: image2.right
            anchors.leftMargin: 0
            font.pixelSize: 12
        }

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
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
            text: qsTr("关于我们")
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



}
