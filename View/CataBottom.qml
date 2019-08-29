/*
    该代码显示目录 下面选项视图片段
    authos:rownh
    date:2019.8.28
*/
import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
Item {
    id: mainView
    property Component catalogs: catalogs;
    property Component thought: thought;
    property Component label: label;
    Component{
        id:catalogs;
        Rectangle{
            color: "red";
            Text {
                anchors.centerIn: parent;
                text: qsTr("1")
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





