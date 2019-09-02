import QtQuick 2.7
import QtQuick.Controls 2.5
import "../Item"
import QtQuick.Layouts 1.3
Rectangle{
    id:root;
    width:400;
    height: 100;
    property var backgroundColor: "black"
    property alias fontSize:textFontSize.text;
    color: backgroundColor
    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent
        Rectangle{
            color:backgroundColor
            //width: parent.width;
            //height: parent.height 不支持操作
            ColumnLayout{

                RowLayout{
                    Layout.leftMargin: 20;
                    Layout.margins: 20
                    Layout.topMargin:15;
                    Layout.bottomMargin: 15
                    spacing: 15
                    SettingButton1{
                        width: 80;
                        height: 30;
                        buttonIconPath: "../Images/font_size_down.png"
                        buttonIconWidth: width/3
                        buttonIconHeight: height
                    }
                    Text {
                        id: textFontSize;
                        text: qsTr(fontSize)
                        color: "white"
                        font.pixelSize: fontSize
                    }
                    SettingButton1{
                        width: 80;
                        height: 30;
                        buttonIconPath: "../Images/font_size_up.png"
                        buttonIconWidth: width/3
                        buttonIconHeight: height
                    }
                    SettingButton2{
                        width: 50;
                        height: 30;
                        buttonText: qsTr("繁")


                    }
                    SettingButton2{
                        width: 50;
                        height: 30;
                        buttonText: qsTr("字体")
                    }
                }
                RowLayout{
                    Layout.leftMargin: 20;
                    Layout.margins: 20
                    Layout.topMargin:10;
                    Layout.bottomMargin: 10
                    spacing: 10
                    SettingButton1{
                        width: 50;
                        height: 30;
                        radius: 2
                        buttonIconPath: "../Images/right_Alignment.png"
                        buttonIconWidth: width/2
                        buttonIconHeight: height
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        radius: 2
                        buttonIconPath: "../Images/right_Alignment1.png"
                        buttonIconWidth: width/2
                        buttonIconHeight: height
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        radius: 2
                        buttonIconPath: "../Images/right_Alignment2.png"
                         buttonIconWidth: width/2
                         buttonIconHeight: height
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        radius: 2
                        buttonIconPath: "../Images/globalRegistration.png"
                        buttonIconWidth: width/2
                        buttonIconHeight: height
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        radius: 2
                        buttonIconPath: "../Images/verticalAlignment.png"
                        buttonIconWidth: width/2
                        buttonIconHeight: height
                    }
                    SettingButton1{
                        width: 30;
                        height: 30;
                        radius: 15
                        buttonIconPath: "../Images/other.png"
                        buttonIconWidth: width/2
                        buttonIconHeight: height-5
                    }
                }
                RowLayout{
                    Layout.leftMargin: 20;
                    Layout.margins: 20
                    Layout.topMargin:10;
                    Layout.bottomMargin: 10
                    spacing: 10
                    SettingButton3{
                        buttonColor: "white"
                        radius: 15
                    }
                    SettingButton3{
                        buttonColor: "#FFE4C4"
                        radius: 15

                    }
                    SettingButton3{
                        buttonColor: "#888888"
                        radius: 15
                    }
                    SettingButton3{
                        buttonColor: "#7FFFD4"
                        radius: 15
                    }
                    SettingButton3{
                        buttonColor: "#333366"
                        radius: 15
                    }
                    SettingButton1{
                        width: 30;
                        height: 30;
                        radius: 15
                        buttonIconPath: "../Images/other.png"
                        buttonIconWidth: width/2
                        buttonIconHeight: height-5
                    }


                }
            }
        }
        Rectangle{
            color:backgroundColor
            ColumnLayout{

                    RowLayout{
                        Layout.leftMargin: 20;
                        Layout.margins: 20
                        Layout.topMargin:15;
                        Layout.bottomMargin: 15
                        spacing: 15
                        SettingButton2{
                            width: 80;
                            height: 30;
                            buttonText: qsTr("仿真")
                        }
                        SettingButton2{
                            width: 80;
                            height: 30;
                            buttonText: qsTr("覆盖")
                        }
                        SettingButton2{
                            width: 80;
                            height: 30;
                            buttonText: qsTr("滑动")
                        }
                        SettingButton2{
                            width: 80;
                            height: 30;
                            buttonText: qsTr("无")
                        }
                    }
                    RowLayout{
                        Layout.leftMargin: 50;
                        Layout.rightMargin: 50
                        Layout.topMargin:10;
                        Layout.bottomMargin: 10
                        spacing: (root.width-2*Layout.leftMargin)*1.0/3

                        SettingButton{
                            buttonIconPath: "../Images/autoChangePage.png"
                            buttonBackColor : "transparent"
                            buttonText: qsTr("自动翻页")
                            width: 30;
                            height: 50;
                        }
                        SettingButton{
                            buttonIconPath: "../Images/horzenScrenChange.png"
                            buttonBackColor : "transparent"
                            buttonText: qsTr("横屏")
                            width: 30;
                            height: 50;
                        }
                        SettingButton{
                            buttonIconPath: "../Images/fullChangePage.png"
                            buttonBackColor : "transparent"
                            buttonText: qsTr("全屏翻页")
                            width: 30;
                            height: 50;
                        }
                    }
                    RowLayout{
                        Rectangle{
                            width: parent.width
                            height: parent.height
                            Text {
                                anchors.fill: parent;
                                text: qsTr("更多设置>>")
                                horizontalAlignment: Qt.AlignHCenter
                                verticalAlignment: Qt.AlignVCenter
                                color: "white"
                            }
                        }
                    }

            }
        }
    }
        PageIndicator {
          id: indicator
          interactive: true
          count: view.count
          currentIndex: view.currentIndex
          anchors.bottom: view.bottom
          anchors.horizontalCenter: parent.horizontalCenter
          delegate: Rectangle {
              implicitWidth: index==view.currentIndex?15:8
              implicitHeight: index==view.currentIndex?15:8
              radius: width / 2
              color: index==view.currentIndex?"red":"#eeeeee"
              Text {
                  visible: index==view.currentIndex?true:false
                  anchors.fill: parent;
                  text: qsTr((view.currentIndex+1).toString())
                  font.pixelSize: 10
                  color: "white"
                  verticalAlignment: Qt.AlignVCenter;
                  horizontalAlignment: Qt.AlignHCenter
              }
              Behavior on opacity {
                  OpacityAnimator {
                      duration: 200
                  }
              }
          }
      }

}
