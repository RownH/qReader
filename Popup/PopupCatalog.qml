import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import "../View"
Rectangle{
    id:root1;
    width: parent.width-20;
    height: parent.height;
    property var backColor:"black";
    property var fontColor: "white";
    property var name:"title"
    property var borderParent:"1";
    color: backColor;
    Component.onCompleted: {
        borderBottom.state="label";
    }
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
            id:row;
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
                    id:labelText;
                    anchors.fill: parent
                    text: qsTr("书签")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color:borderBottom.state=="label"?"#FF4500":fontColor
                }
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                       borderBottom.state="label";
                       stack.push(mainView.label)
                    }

                }
            }
            Rectangle{
                id:thought;
                height: parent.height
                width: 80;
                color: "transparent";
                Text {
                    id:thoughtText;
                    anchors.fill: parent
                    text: qsTr("想法/划线")
                   color:borderBottom.state=="thoughts"? "#FF4500":fontColor
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                MouseArea{
                         anchors.fill: parent;
                         onClicked: {
                             borderBottom.state="thoughts"
                             stack.push(mainView.thought)
                         }
                 }

            }
            Rectangle{
                id:catalogs;
                height: parent.height;
                width: 40;
                color: "transparent";
                Text {
                    id:catalogsText;
                    anchors.fill: parent

                    text: qsTr("目录")
                  color:borderBottom.state=="catalogs"?"#FF4500":fontColor
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                MouseArea{
                         anchors.fill: parent;
                         onClicked: {
                            borderBottom.state="catalogs";
                             stack.push(mainView.catalogs)
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
        states: [
                State {
                    name: "label"
                    ParentChange{
                        target: borderBottom;
                        parent: label;
                        width: label.width;
                        x:0;

                    }
                    PropertyChanges {
                        target: borderBottom;
                     }

                },
                State{
                    name: "thoughts"
                    ParentChange{
                        target: borderBottom;
                        parent: thought;
                        width: thought.width;
                        x:0;

                    }
                },
                State {
                    name: "catalogs"
                    ParentChange{
                        target: borderBottom;
                        parent: catalogs;
                        width: catalogs.width;
                        x:0
                    }
                }
        ]
        transitions: Transition {
            ParentAnimation {
                 NumberAnimation { properties: "x,y"; duration: 1000 }

            }
         }

    }

    StackView {
        anchors.top: _2.bottom;
        anchors.left: parent.left;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;
        id: stack
        pushEnter: Transition {
               PropertyAnimation {
                   property: "opacity"
                   from: 0
                   to:1
                   duration: 200
               }
               PropertyAnimation{
                    property: "x";
                   from:root1.width;
                    to:0;
                    duration: 2000;
               }
           }
           pushExit: Transition {
               PropertyAnimation {
                   property: "opacity"
                   from: 1
                   to:0
                   duration: 200
               }
           }
           popEnter: Transition {
               PropertyAnimation {
                   property: "opacity"
                   from: 0
                   to:1
                   duration: 200
               }
           }
           popExit: Transition {
               PropertyAnimation {
                   property: "opacity"
                   from: 1
                   to:0
                   duration: 200
               }
           }
        initialItem: mainView.label
        CataBottom{
            id:mainView;
        }
    }
}
