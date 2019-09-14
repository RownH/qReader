/*
    该代码显示目录 下面选项视图片段
    authos:rownh
    date:2019.8.28
*/
import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../"
Item {
    id: mainView
    property Component catalogs: catalogs;
    property Component thought: thought;
    property Component label: label;
    property var backColor;
    property var fontColor;
    property var catalogoModel;
    Component{
        id:catalogs;
        Rectangle{
            anchors.fill: parent;
            width: parent.width;
            height: parent.height;
            ListView{
                id:view
                width: parent.width;
                height: parent.height
                model: Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).charts;
                delegate: Rectangle{
                    width: parent.width;
                    height: 50;
                    color: backColor;
                    Text {
                        anchors.fill: parent;
                        text: model.name
                        color:index===Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart? "orange": fontColor
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                           Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart=index;
                        }
                    }
                    border.color: "#eeeeee";
                }


            }
        }
    }
    Component{
        id:thought;
        Rectangle{
            color: "orange";
            Text {
                anchors.centerIn: parent;
                text: qsTr("2")
            }
        }
    }
    Component{
        id:label;
        Rectangle{
            color: "yellow";
            Text {
                anchors.centerIn: parent;
                text: qsTr("3")
            }
        }
    }
}





