import QtQuick 2.0
import QtQuick.Controls 2.5
Flickable {
    id: view
    width: 400;
    height: 480;
    contentX: width;
    contentHeight: 1000;
    y:mouse.y-contentY
    onDragStarted: {
        y:y+10;

    }
    onDragEnded: {
        y:y+10;
    }
    MouseArea{

        onReleased: {
              y:mouse.y-contentY
        }

    }
    TextArea {
        width: parent.width
        height: parent.height
        readOnly: true;
        anchors.fill: parent;
        text: "TextArea\n...\n...\n...\n...\n...\n...\n"
        wrapMode: Text.WrapAnywhere
    }

}
