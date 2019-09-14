import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import "../View"
import "../"
Rectangle{
    id:root1;
    property var backColor;
    property var fontColor;
    property var borderParent:"1";
    property var cataModel;
    color: backColor;
    Component.onCompleted: {
        borderBottom.state="catalogs";
        swipView.currentIndex=2;
    }
    Rectangle {
        id: rectangle
        anchors.top: parent.top;
        anchors.left: parent.left;
        anchors.right: parent.right;
        anchors.leftMargin: 1.0/20.0* parent.width;
        anchors.rightMargin: 1.0/20.0* parent.width;
        height: 40.0/400.0 *parent.height;
        color: backColor
        Text {
            anchors.fill:parent;
            anchors.centerIn: parent.Center
            text:Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).bookName;
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
        height: 40.0/400.0 *parent.height
        RowLayout{
            id:row;
            anchors.top: parent.top;
            anchors.bottom: parent.bottom;
            anchors.right: parent.right;
            anchors.rightMargin: 20.0/400.0*parent.width;
            anchors.left: parent.left;
            anchors.leftMargin: 20.0/400.0*parent.width;
            spacing: 100.0/400.0*parent.width;
            Rectangle{
                id:label;
                height: parent.height;
                width: 40.0/400.0*parent.width;
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
                       swipView.currentIndex=0;
                    }
                }
            }
            Rectangle{
                id:thought;
                height: parent.height
                width: 80.0/400.0*parent.width;
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
                             swipView.currentIndex=1;
                         }
                 }
            }
            Rectangle{
                id:catalogs;
                height: parent.height;
                width: 40.0/400.0*parent.width;
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
                            swipView.currentIndex=2;
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
                        x:0;                //相对位置  相对父节点的位置

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
    CataBottom{
        id:mainView;
        catalogoModel: cataModel
        backColor: root1.backColor;
        fontColor: root1.fontColor;
    }
    Rectangle{
        anchors.top: _2.bottom;
        anchors.left: parent.left;
        anchors.right: parent.right;
        width: parent.width;
        anchors.bottom: parent.bottom;
        SwipeView {
            width: parent.width;
            height: parent.height;
            anchors.fill: parent;
            id: swipView;
                Loader{
                    sourceComponent: mainView.label
                }

                Loader{
                    sourceComponent: mainView.thought
                }
                Loader{
                    sourceComponent: mainView.catalogs

                }

            onCurrentIndexChanged: {
                if(swipView.currentIndex==0)
                    borderBottom.state="label";
                else if(swipView.currentIndex==1)
                     borderBottom.state="thoughts";
                else if(swipView.currentIndex==2)
                     borderBottom.state="catalogs";
                }
            }
    }
}
