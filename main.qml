import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import "Item"
import "Item/bookshelf"
import "./View"
import "./View/readview"
import "."
import "common"
import Reader 1.0
import Chapter 1.0
import BookShelf 1.0
ApplicationWindow {
    id: rootwindow
    visible: true
    width:400
    height: 600
    title: qsTr("书客")


    SwipeView {
        id: swipeview
        height: rootwindow.height - bar.height
        width: parent.width
        currentIndex: bar.currentIndex

        //首页
        HomeStack{}

//        HomeView{}


        //书架
        Rectangle{
            id:bookshelf
            color: "#CCCCCC"
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
                cellHeight: 1/3*(rootwindow.height-bar.height);

                model: Settings.bookShelf.books;
                delegate:  Book_ShelfItem{
                    width: bookshelfview.cellWidth;
                    height: bookshelfview.cellHeight;
                    onOpenSource: {
                        read.visible=true;
                        //顶、底部导航隐藏
                        topBars.visible=false;
                        bar.visible=false;
                        //界面高度增加
                        swipeview.height=rootwindow.height;
                        //解除禁止滑动
                        swipeview.interactive=false;
                        Settings.bookShelf.currentBook=index;
                    }
                }
            }
            ReaderView{
                id:read;
                visible: false;
                width: rootwindow.width;
                height: rootwindow.height;
            }
        }


        AnalyzeView{
            id: analyzeview
            width: rootwindow.width;
            height: rootwindow.height;

        }


        MineView{}
    }

    Rectangle{//模拟线段
//                anchors.top: gridviewrec.bottom
        width:rootwindow.width //长
        height:1  //高
        anchors.bottom: bar.top
        color:"#e6e6e6" //颜色
    }


    footer: BaseTabBar{
        id: bar
//        tbheight: 0.08*rootwindow.height
        height: 0.08*rootwindow.height
        width: rootwindow.width




        currentIndex: swipeview.currentIndex
        Component.onCompleted: {
            myModel.append({ "modelText": "首页", "modelColor": "#000000", "modelColorG": "#1296db", "modelSrc": "qrc:/Images/guide/homepage.png", "modelSrcG": "qrc:/Images/guide/homepage_after.png"})
            myModel.append({ "modelText": "书架", "modelColor": "#000000", "modelColorG": "#1296db", "modelSrc": "qrc:/Images/guide/books.png", "modelSrcG": "qrc:/Images/guide/books_after.png"})
            myModel.append({ "modelText": "分析", "modelColor": "#000000", "modelColorG": "#1296db", "modelSrc": "qrc:/Images/guide/analogy.png", "modelSrcG": "qrc:/Images/guide/analogy_after.png"})
            myModel.append({ "modelText": "我的", "modelColor": "#000000", "modelColorG": "#1296db", "modelSrc": "qrc:/Images/guide/me.png", "modelSrcG": "qrc:/Images/guide/me_after.png"})
        }
    }
}
