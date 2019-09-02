import QtQuick 2.0

Rectangle{
    id:root;
    property alias buttonIconPath: buttonIconPath.source
    property alias buttonText: buttonText.text
    property var buttonBackColor;
    color: buttonBackColor;
    Rectangle{
        id:button;
        anchors.top: parent.top;
        anchors.topMargin: 3;
        width: parent.width
        height: parent.height/2;
        color: buttonBackColor;

        Image {
            anchors.fill: parent;
            width: parent.width;
            height: parent.height
            id: buttonIconPath;

            source:buttonIconPath;
        }
    }
    Rectangle{
        id:buttonN;
        width: parent.width
        height: parent.height/2
        anchors.top: button.bottom;
        color: buttonBackColor;
        Text {
            anchors.centerIn: parent
            id: buttonText;
           // text:buttonName
            text: buttonText;
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            font.pixelSize: 8;
            color: "#eeeeee"
        }
    }
}
