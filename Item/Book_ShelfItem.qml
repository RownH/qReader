import QtQuick 2.0

Rectangle{
    radius: 10
    id:root;
    signal openSource();
    color: "transparent";
    Rectangle{
        id:delegate;
        width:  parent.width-1.5/5*parent.width;
        height: parent.height-1.5/5.0*parent.height;
        anchors.bottom: parent.bottom;
        anchors.leftMargin: 40;
        focus: true;
        border.width: 2
        border.color: "#eeeeee";
        radius: 5;

        Image {
            width: parent.width;
            height: parent.height;
            anchors.fill:parent;
            anchors.margins: 5
            source: "https://www.cnblogs.com/skins/chinaheart/images/header.jpg"
        }
        MouseArea{
            anchors.fill: parent;
            hoverEnabled: true;
            onClicked: {
                openSource(index);
            }
            onEntered: {
                    delegate.width=root.width-1/5*parent.width;
                     delegate.height=root.height-1/5.0*parent.height;
                    delegate.border.color="gold";
            }
            onExited: {
                delegate.width=root.width-2/5*parent.width;
                 delegate.height=root.height-2/5.0*parent.height;
                delegate.border.color="#eeeeee";
            }
        }
    }
}
