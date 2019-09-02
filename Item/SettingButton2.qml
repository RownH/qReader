import QtQuick 2.0
Rectangle{
    id:root;
    property alias buttonText:buttonText.text
    color: "transparent"
    Rectangle{
        id:button;
        anchors.top: parent.top;
        anchors.topMargin: 3;
        width: parent.width;
        height: parent.height;
        radius: parent.height/2;
        color: "transparent"
        Text {
            id:buttonText;
            text: buttonText
            anchors.centerIn: parent
            verticalAlignment: Qt.AlignVCenter
            horizontalAlignment : Qt.AlignHCenter
            color: "white"

        }
        border.color: "#eeeeee"
    }
}
