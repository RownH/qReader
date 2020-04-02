import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import QtQuick.Window 2.12
import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Controls.Styles 1.4
import "../../common"
import "../../Item/homepage"

Item {
    property var bookdesc_wid: 5/8*rootwindow.width
    property var bookdesc_hei: imgsize.height
    property var imgsize: 1/4*rootwindow.width

    property alias sorttitle: sorttitle.text

    Column{
        TopBars {
            id:sort_tbar
            height: 0.07*rootwindow.height
            width: rootwindow.width
            z:2
            RowLayout {
                anchors.fill: parent
                IconButton {
                    iconSource:"qrc:/Images/common/back.png"
                    onClicked:{
                        homestackview.pop()
                        basebar.visible = true
                        //解除禁止滑动
                        swipeview.interactive=true;
                    }
                }
                Label {
                    id:sorttitle
                    text: qsTr("经典名著")
                    font.bold: true
                    font.pixelSize:18
                    elide: Label.ElideRight
                    horizontalAlignment: Qt.AlignHCenter
                    verticalAlignment: Qt.AlignVCenter
                    Layout.fillWidth: true
                }
            }
        }
        Rectangle{//模拟线段
            width:rootwindow.width //长
            height:4  //高
            z:2
            color:"#e6e6e6" //颜色
        }

        Rectangle{
            id:content
//            anchors.top: sort_tbar.bottom
            width:rootwindow.width
            height: rootwindow.height-sort_tbar.height
//            color: "red"

            Column{
                Rectangle{
                    id:sort
                    width: sort_tbar.width
                    height: sort_tbar.height
                    z:2
                    Row{
                        spacing: 20
                        anchors.centerIn: parent
                        Text {
                            text: qsTr("热读榜")
                            font.bold: true
                            font.pixelSize: 15
                        }
                        Text {
                            text: qsTr("新书榜")
                            font.bold: true
                            font.pixelSize: 15
                        }
                        Text {
                            text: qsTr("口碑榜")
                            font.bold: true
                            font.pixelSize: 15
                        }
                        Text {
                            text: qsTr("影视原著")
                            font.bold: true
                            font.pixelSize: 15
                        }
                    }
                }
                Rectangle{//模拟线段
                    width:rootwindow.width //长
                    height:4  //高
                    z:2
                    color:"#e6e6e6" //颜色
                }
                Rectangle{
                    id:listbook
//                    anchors.fill: content
                    width: sort_tbar.width
                    height: content.height-sort.height-8
//                    color: "red"
                    ListView{
                        anchors.fill: parent
                        anchors.leftMargin: 20
                        spacing:10
                        model:ListBookModel{}
                        delegate: Component{
                            Column{
                                Row{
                                    id:controw
                                    spacing: 10
                                    Rectangle{
                                       width:imgsize
                                       height:imgsize

                                       Image{
                                           id:_bookimage
                                           height: parent.width
                                           width: parent.height
                                           source: bookimage
                                       }
                                    }
                                    Column{
                                       Text {//书籍名字
                                           id: _bookname
                                           text: bookname
                                           font.bold: true
                                           font.pixelSize: 15
                                       }
                                       Text {//书籍简介
                                           id: _bookdesc
                                           width:bookdesc_wid
                                           height: bookdesc_hei
                                           text: bookdesc
//                                           font.bold: true
                                           font.pixelSize: 14
                                           wrapMode: Text.WordWrap
                                       }
                                   }
                                }
                                Rectangle{//模拟线段
                                    width:rootwindow.width-40 //长
                                    height:4  //高
                                    color:"#e6e6e6" //颜色
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
