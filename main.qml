import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick 2.0
import QtQuick.Layouts 1.0
import "./Item"
import "./View"
import "."
import Reader 1.0
import Chapter 1.0
import BookSelft 1.0
Window {
    visible: true
    id:root;
    width:400
    height: 600
    title: qsTr("Hello World")
    Rectangle{
        width: parent.width;
        height: parent.height;
        gradient: Gradient {
                   GradientStop { position: 0.0; color: "#dbddde"; }
                  GradientStop { position: 1.0; color: "#5fc9f8"; }
              }
    }
    GridView{
        id:view;
        anchors.fill: parent;
        width: parent.width;
        height: parent.height;
        cellWidth: 1/3.0 *parent.width;
        cellHeight: 1/3.0*parent.height;

        model: Settings.bookShelf.books;
        delegate:  Book_ShelfItem{
            width: view.cellWidth;
            height: view.cellHeight;
            onOpenSource: {
                read.visible=true;
               Settings.bookShelf.currentBook=index;
            }
        }
    }
    ReaderView{
        id:read;
        visible: false;
        width: 400;
        height: 600;
    }


}

