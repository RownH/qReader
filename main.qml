import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "./Item"
Window {
    visible: true
    width: 400
    height: 480
    title: qsTr("Hello World")
    ListView{
        id:view;
        width: parent.width;
        height: parent.height;
        model:$Model;
        delegate:  ListItem{

        }
    }

}

