import QtQuick 2.0

Item {
    width: 100
    height: 140

    Image {
        height: 120
        id: image
        anchors.top: parent.top;
        anchors.left: parent.left;
        anchors.right: parent.right;
        source: "qrc:/qtquickplugin/images/template_image.png"
    }
    Rectangle{
        width: parent.width;
        height: parent.height-image.height;
        color: "#eeeeee";
        anchors.bottom: parent.bottom

    }

}
