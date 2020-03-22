import QtQuick 2.0
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0
import "../Item/homepage"
import "./HomeView"

Rectangle {
    width: rootwindow.width
    height:rootwindow.height
//顶部搜索栏
//**************************************
    SearchBar {
        id:searchBar
        height: 0.07*rootwindow.height
        width: rootwindow.width
        z:3

        //搜索事件响应
        onDoSearch: {
            if (searchText.length > 0){
                console.log(searchText)
            }
        }
    }
//***************************************

    //滑动
    Flickable {
        id: contents
        anchors.fill: parent
        anchors.topMargin: searchBar.height
        contentHeight: flow.height+bar.height
        contentWidth: rootwindow.width
//            clip: false

        Column{
            id: flow
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 25
            //轮播
            //***************************************
            Rectangle{
                width: rootwindow.width/2
                height: cirCleView.height

                CircleView {
                    id: cirCleView
                    anchors.margins: 5
                    model: ListModel {
                        ListElement { picUrl: 'qrc:/Images/homepage/switchimg/PHP.jpg' }
                        ListElement { picUrl: 'qrc:/Images/homepage/switchimg/C++.jpg' }
                        ListElement { picUrl: 'qrc:/Images/homepage/switchimg/deeplearning.png' }
                        ListElement { picUrl: 'qrc:/Images/homepage/switchimg/python.jpg' }
                        ListElement { picUrl: 'qrc:/Images/homepage/switchimg/cocos2d.jpg' }
                        ListElement { picUrl: 'qrc:/Images/homepage/switchimg/android.jpg' }
                    }

                    delegate: Item {
                        width: 1/2*cirCleView.width
                        height: cirCleView.height
                        Image {
                            width: 1/2*cirCleView.width
                            height: cirCleView.height
                            anchors.fill: parent
                            anchors.bottom: parent.bottom
                            source: picUrl
                        }
                        MouseArea {
                            anchors.fill: parent
                            //轮播图点击后切换页面处理
                            onClicked: {
                                console.log("处理图片"+picUrl)
                            }
                        }
                    }

                    onDraggingChanged: {
                        if (dragging)
                            timer.stop()
                        else
                            timer.start()
                    }
                }

                PageIndicator {
                    anchors.bottom: cirCleView.bottom
                    anchors.horizontalCenter: cirCleView.horizontalCenter
                    count: cirCleView.count
                    currentIndex: cirCleView.currentIndex
                }

                Timer {
                    id: timer
                    running: true
                    repeat: true
                    //轮播切换速度
                    interval: 2000
                    onTriggered: cirCleView.currentIndex = (cirCleView.currentIndex + 1) % cirCleView.count
                }
            }
            //******************************************

            Rectangle{//模拟线段
//                anchors.bottom: gridviewrec.top
                width:rootwindow.width //长
                height:8  //高
                color:"#e6e6e6" //颜色
            }

            //网格排列
            //******************************************
            Rectangle{
                id:gridviewrec
                width: rootwindow.width/2
                height: gridviews.height

                GridViews{
                    id:gridviews
                    width: rootwindow.width
                    height: 0.2*rootwindow.height
                }
            }
            //******************************************

            Rectangle{//模拟线段
//                anchors.top: gridviewrec.bottom
                width:rootwindow.width //长
                height:8  //高
                color:"#e6e6e6" //颜色
            }

            //猜你喜欢
            //******************************************
            Rectangle{
                id:likerec
                width: 0.9*rootwindow.width
                height: 1/3*rootwindow.height
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#cdcdcd"
                radius: 10
                Text {
                    id: like
                    anchors.bottom: likevideorec.top
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    font.bold: true
                    text: qsTr("猜你喜欢")
                }
                Rectangle{
                    id:likevideorec
                    width: parent.width-20
                    height: parent.height-40
                    color: "#f1ecec"
                    anchors.bottom: likerec.bottom
                    anchors.bottomMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    VideoView{
                        id:videoview
                        width: parent.width
                        height: parent.height-20
                        anchors.centerIn: parent
                    }
                }


            }
            //******************************************
        }
    }
}
