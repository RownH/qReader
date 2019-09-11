import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "./Item"
import "./View"
import "."
import Reader 1.0
import Chapter 1.0
Window {


    visible: true
    width:480
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


    ReaderView{
        id:read;
        width: 480;
        height: 600;

    }
    Component.onCompleted: {
        console.log(Settings.theme.font_Size)
    }

}

