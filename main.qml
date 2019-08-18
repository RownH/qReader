import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    ListView{
        id:view;
        width: parent.width;
        height: parent.height;
        model:$Model;
        delegate: Rectangle{
        width: parent.width;
        height: 40;
        color: "red";
        border.color: "black"
        anchors.margins: 2
        Text {
            anchors.fill: parent;
            id: name
            text: poem_title
        }
    }
    }
}
