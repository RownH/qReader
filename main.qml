import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "./Item"
import "./View"
import Reader 1.0
import Chapter 1.0
Window {

    property var name1;
    Chapter{
        id:chapter;
        name: "sadasda";
        source: "";
        str: "";

    }
    visible: true
    width:400
    height: 600
    title: qsTr("Hello World")
    ListView{
        id:view;
        width: parent.width;
        height: parent.height;
        model:$Model;
        delegate:  ListItem{

        }
    }
    Text {
        id: name
        text: chapter.name;

    }
    ReaderView{
        id:read;
        width: 400;
        height: 600;

    }

}

