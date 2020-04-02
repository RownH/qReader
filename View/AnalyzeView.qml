import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Controls.Styles 1.4
import "../common"
Item{

    property var btnwidth: 1/3*analyzetop.width
    property var btnheight: analyzetop.height
//    property var iconwidth: analyzetop.height
//    property var iconheight: analyzetop.height
//    property var textwidth: analyzetop.height
//    property var textheight: analyzetop.height

//顶部按钮
    TopBars{
        id:analyzetop
        width: 0.90*rootwindow.width
        height:1/6*rootwindow.height

        Rectangle{//模拟线段
            anchors.top: analyzebar.bottom
            width:rootwindow.width //长
            height:8  //高
            color:"#e6e6e6" //颜色
        }
        RowLayout {
            id: analyzebar

            anchors.fill: parent
            anchors.leftMargin: 10
            spacing: 10
            Rectangle{
                id:analyze_rec1
//                color:"#bfbfbf" //颜色
                width: btnwidth
                height: btnheight
//                border.color: "#bfbfbf"
                IconButton {
                    id: analyze_words
                    anchors.centerIn: parent
//                    anchors.top: parent.top
                    iconwidth: 1/2*parent.width
                    iconheight:1/2*parent.height
                    iconSource:"qrc:/Images/analyze/analyze_words.png"
                }
                Text {
                    id: analyze1
                    width: parent.width
                    anchors.top: analyze_words.bottom
                    anchors.topMargin: 10
                    horizontalAlignment: Text.AlignHCenter //水平方向居中
                    font.bold: true
                    text: qsTr("分析词频")
                }
            }
            Rectangle{
                id:analyze_rec2
//                color:"#bfbfbf" //颜色
                width: btnwidth
                height: btnheight
                IconButton {
                    id: draw_words
                    anchors.centerIn: parent
//                    anchors.top: parent.top
                    iconwidth: 1/2*parent.width
                    iconheight:1/2*parent.height
                    iconSource:"qrc:/Images/analyze/draw_words.png"
                }
                Text {
                    id: analyze2
                    width: parent.width
                    anchors.top: draw_words.bottom
                    anchors.topMargin: 10
                    horizontalAlignment: Text.AlignHCenter //水平方向居中
                    font.bold: true
                    text: qsTr("绘制词云")
                }
            }
            Rectangle{
                id:analyze_rec3
//                color:"#bfbfbf" //颜色
                width: btnwidth
                height: btnheight
                IconButton {
                    id: men_relationship
                    anchors.centerIn: parent
//                    anchors.top: parent.top
                    iconwidth: 1/2*parent.width
                    iconheight:1/2*parent.height
                    iconSource:"qrc:/Images/analyze/men_relationship.png"
                }
                Text {
                    id: analyze3
                    width: parent.width
                    anchors.top: men_relationship.bottom
                    anchors.topMargin: 10
                    horizontalAlignment: Text.AlignHCenter //水平方向居中
                    font.bold: true
                    text: qsTr("人物关系")
                }
            }
        }
    }

//**************************************************************

        Rectangle{
            id:selectbook
            width: rootwindow.width
            height: rootwindow.height-analyzetop.height-basebar.height
            anchors.top: analyzetop.bottom
            color: "transparent"

            Rectangle{
                id:selectrec
                width: 0.8*rootwindow.width
                height: 0.5*rootwindow.height
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                color: "blue"
                Image {
                    id: selectimage
                    anchors.fill: parent
                    source: "qrc:/Images/analyze/book.jpg"
                }
            }
            Button{
                id:selectbtn
                width: 100
                height: 50
                anchors.top: selectrec.bottom
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                style: ButtonStyle{
                    background: Rectangle {
                        //设置圆角
                        radius: 10;
                        color: "#f1ecec"
                    }

                }

                Text {
                    id: selecttext
                    anchors.centerIn: parent
                    font.bold: true
                    text: qsTr("选择文章")
                }
            }
        }
}

