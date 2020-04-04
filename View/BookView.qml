import QtQuick 2.0
import QtQuick.Controls 1.4
import "../common"
import "../Item/bookshelf"
import "../"

import "../View/readview"
StackView{
    id:bookstack
    Rectangle{
        id:bookshelf
        color: "#CCCCCC"
        Image {
                id: rocket
                fillMode: Image.TileHorizontally
//                    smooth: true
                width: rootwindow.width
                source: 'qrc:/Images/shelf/background.jpg'
        }

        TopBars{
            id: topBars
            height: 0.07*rootwindow.height
            width: rootwindow.width
            text: qsTr("我的书架")
            z: 2

            IconButton {
                id: searchButton
                anchors.right: addButton.left
                anchors.rightMargin: 16
                anchors.verticalCenter: parent.verticalCenter
                iconSource: "qrc:/Images/shelf/search.png"
            }
            IconButton {
                id: addButton
                anchors.right: parent.right
                anchors.rightMargin: 16
                anchors.verticalCenter: parent.verticalCenter
                iconSource: "qrc:/Images/shelf/add.png"
                onClicked: {
                    addbtn.addbtnrec.visible=false
                    addbtn.addmenu.open()
                }
            }
        }

        AddButton{
            id:addbtn
            x:addButton.x-80
            y:addButton.y
        }

        GridView{
            id:bookshelfview;
//                anchors.fill: parent;
            anchors.left: bookshelf.left
            anchors.leftMargin: 2/13*cellWidth
            width: parent.width;
            height: parent.height;
            cellWidth: 1/3*rootwindow.width;
            cellHeight: 1/3*(rootwindow.height-basebar.height);

            model: Settings.bookShelf.books;
            delegate:  Book_ShelfItem{
                width: bookshelfview.cellWidth;
                height: bookshelfview.cellHeight;
                onOpenSource: {
                    bookstack.push(readview)
//                        readview.visible=true;
                    //顶、底部导航隐藏
//                    topBars.visible=false;
                    basebar.visible=false;
                    //界面高度增加
                    swipeview.height=rootwindow.height;
                    //禁止滑动
                    swipeview.interactive=false;
                    Settings.bookShelf.currentBook=index;
                }
            }
        }
//            ReaderView{
//                id:readview;
//                visible: false;
//                width: rootwindow.width;
//                height: rootwindow.height;
//            }
    }

    Component {
            id: readview
            ReaderView {
                visible: false;
                width: rootwindow.width;
                height: rootwindow.height;
            }
        }
}
