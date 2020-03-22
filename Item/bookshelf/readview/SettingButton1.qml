import QtQuick 2.0
Rectangle{
    id:root;
    property alias buttonIconPath: buttonIconPath.source
    property alias buttonIconWidth: buttonIconPath.width
    property alias buttonIconHeight: buttonIconPath.height
    color: "transparent"
    radius: parent.height/2;
    Rectangle{
        id:button;
        color: "transparent"
        anchors.top: parent.top;

        width: parent.width;
        height: parent.height;
        Image {
            anchors.verticalCenter: parent.verticalCenterl
            anchors.horizontalCenter: parent.horizontalCenter
            width: buttonIconWidth
            height: buttonIconHeight
            id: buttonIconPath;
            source:buttonIconPath
            verticalAlignment: Qt.AlignVCenter
            horizontalAlignment: Qt.AlignHCenter
        }

    }
}
