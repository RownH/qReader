import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
    Rectangle {
        id: rectangle
        Rectangle{
            color: "transparent"
            id:processBar;
            width: parent.width;
            height: 2.0/5.0 * parent.height
            anchors.top: parent.top

            RowLayout{
                id:process;
                height: 50;
                anchors.top: parent.top;
                anchors.left: parent.left;
                anchors.leftMargin: 20;
                anchors.right: parent.right;
                anchors.rightMargin: 20;
                Rectangle{
                    width: 30;
                    height: 30;
                    color: "transparent"
                    Image {
                        anchors.fill: parent;
                        source: "../Images/readview/lowBrightness.png"
                    }
                }
                Rectangle{
                    height: 50;
                    width: 260;
                    color: "transparent"
                    Slider{
                        x: 0
                        y: 14
                        width: 260
                        height: 22
                        from:0;
                        to:100;
                        stepSize:1

                    }
                }
                Rectangle{
                    width: 30;
                    height: 30;
                    color: "transparent"
                    Image {
                        anchors.fill: parent;
                        source: "../Images/readview/heigtBrightness.png"
                    }
                }
        }

        }
        Rectangle{
            id: _1;
            width: parent.width;
            height: 2
            anchors.top: processBar.bottom
            color: "#eeeeee"
        }
        Rectangle{
            color: "transparent"
            id:systemBrightNess;
            width: parent.width;
            height: 3/10.0 *parent.height
            anchors.top: _1.bottom;
            Rectangle{
                    width: 50
                    height: 20
                     color: "transparent"
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        anchors.fill: parent
                        text: qsTr("系统亮度")
                        font.pointSize: 9
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter

                        color: "white"
                    }
            }

            Switch {
                id: element
                anchors.right: parent.right;
                anchors.verticalCenter: parent.verticalCenter;
                anchors.rightMargin: 40;
                width: 40
                height: 22
            }
        }
        Rectangle{
            id:_2;
            width: parent.width;
            height: 2;
            anchors.top: systemBrightNess.bottom;
            color: "#eeeeee"
        }
        Rectangle{
            id:eyeProtection
            color: "transparent"
            width: parent.width;
            height: 3/10.0 *parent.height
            anchors.top: _2.bottom;
            Rectangle{
                    width: 50
                    height: 20
                     color: "transparent"
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        anchors.fill: parent
                        text: qsTr("护眼模式")
                        font.pointSize: 9
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter

                        color: "white"
                    }
            }

            Switch {
                id: element1
                anchors.right: parent.right;
                anchors.verticalCenter: parent.verticalCenter;
                anchors.rightMargin: 40;
                width: 40
                height: 22
            }
        }
    }

