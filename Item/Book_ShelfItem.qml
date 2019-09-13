import QtQuick 2.0

Rectangle{

    width: 1/5.0*root.width;
    height: 1/5.0*root.height;
    radius: 10
    border.color: "black"
    border.width: 10
    signal openSource();
    Image {
        width: parent.width;
        height: parent.height;
        anchors.fill:parent;
        anchors.margins: 5
        source: "https://www.cnblogs.com/skins/chinaheart/images/header.jpg"
    }
    MouseArea{
        anchors.fill: parent;
        onClicked: {
            openSource(index);
        }
    }
}
