import QtQuick 2.0
import QtQuick.Layouts 1.0
Rectangle{
    id:root;
    width: 400;
    height: 600;
    property var backColor:"black";
    property var fontColor: "white";
    property var name:"title"
    property var borderParent:"1";
    color: backColor;
    Rectangle {
        id: rectangle
        anchors.top: parent.top;
        anchors.left: parent.left;
        anchors.right: parent.right;
        anchors.leftMargin: 20;
        anchors.rightMargin: 20;
        height: 80;
        color: backColor
        Text {
            anchors.fill:parent;
            anchors.centerIn: parent.Center
            text: qsTr("总裁偏要宠我")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            color: fontColor;
        }
    }
    Rectangle{
        id:_
        anchors.top:rectangle.bottom;
        width: parent.width;
        height: 1;
        color: "#eeeeee";
    }
    Rectangle {
        id: rectangle1
        anchors.top: _.bottom;
        color: backColor
        width: parent.width;
        height: 60
        RowLayout{
            anchors.top: parent.top;
            anchors.bottom: parent.bottom;
            anchors.right: parent.right;
            anchors.rightMargin: 20;
            anchors.left: parent.left;
            anchors.leftMargin: 20;
            spacing: 100
            Rectangle{
                id:label;
                height: parent.height;
                width: 40;
                color: "transparent";
                Text {
                    anchors.fill: parent
                    text: qsTr("书签")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: fontColor
                }
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                       borderBottom.parent=label;
                    }

                }
            }
            Rectangle{
                id:thought;
                height: parent.height
                width: 80;
                color: "transparent";
                Text {
                    anchors.fill: parent
                    text: qsTr("想法/划线")
                    color: fontColor
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                MouseArea{
                         anchors.fill: parent;
                         onClicked: {
                            borderBottom.parent=thought;
                         }

                 }

            }
            Rectangle{
                id:catalogs;
                height: parent.height;
                width: 40;
                color: "transparent";
                Text {
                    anchors.fill: parent
                    id: name
                    text: qsTr("目录")
                    color: fontColor
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                MouseArea{
                         anchors.fill: parent;
                         onClicked: {
                            borderBottom.parent=catalogs;
                         }

                 }
            }
        }
    }
    Rectangle{
        id:_2;
        anchors.top: rectangle1.bottom;
        width: parent.width;
        height: 1;
        color: "#eeeeee";
    }
    Rectangle{
        id:borderBottom;
        parent: label
        anchors.bottom: parent.bottom
        width: parent.width;
        height: 3
        radius: 2
        color: "#FF4500"
    }
    states: [
        State {
            name: "label"
            ParentChange{
                target: borderBottom;
                parent: label;

            }
        },
        State {
            name: "thoughts"
            ParentChange{
                target: borderBottom;
                parent: thought;

            }
        },
        State {
            name: "catalogs"
            ParentChange{
                target: borderBottom;
                parent: ;

            }
        }


    ]
}
