import QtQuick 2.7
import QtQuick.Controls 2.5
import "../Item"
import "../Item/bookshelf/readview"
import QtQuick.Layouts 1.3
import "../"
Rectangle{
    id:root;

    property var backgroundColor;
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
                width: parent.width;
                height: parent.height
                anchors.fill: parent;
                RowLayout{
                    height: parent.height;
                    Layout.leftMargin: 20;
                    Layout.topMargin:15;
                    spacing:   (parent.width-80-80-20-50-50-2*Layout.leftMargin)*1.0/4
                    SettingButton1{
                        width: 80;
                        height: 30;
                        buttonIconPath: "../Images/readview/font_size_down.png"
                        buttonIconWidth: width/3
                        buttonIconHeight: height
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.font_Size--;
                            }
                        }
                    }
                    Text {
                        id: textFontSize;
                        width: 20
                        text: qsTr(String(Settings.bookSetting.font_Size))
                        color: "white"
                    }
                    SettingButton1{
                        width: 80;
                        height: 30;
                        buttonIconPath: "../Images/readview/font_size_up.png"
                        buttonIconWidth: width/3
                        buttonIconHeight: height
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.font_Size++;
                            }
                        }
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
                    width: parent.width;
                    Layout.leftMargin: 20;
                    spacing:   (root.width-5*50-30-2*Layout.leftMargin)*1.0/5
                    SettingButton1{
                        width: 50;
                        height: 30;
                        buttonIconPath: "../Images/readview/right_Alignment.png"
                        border.color:  Settings.bookSetting.alignment_method===TextEdit.AlignRight?"red":"#eeeeee";
                        buttonIconWidth: width/2
                        buttonIconHeight: height
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.alignment_method=TextEdit.AlignRight;//右对齐
                            }
                        }
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        buttonIconPath: "../Images/readview/right_Alignment1.png"
                        border.color:  Settings.bookSetting.alignment_method===TextEdit.AlignLeft?"red":"#eeeeee";

                        buttonIconWidth: width/2
                        buttonIconHeight: height
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.alignment_method=TextEdit.AlignLeft;//左对齐
                            }
                        }
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        buttonIconPath: "../Images/readview/right_Alignment2.png"
                        border.color:  Settings.bookSetting.alignment_method===TextEdit.AlignHCenter?"red":"#eeeeee";

                        buttonIconWidth: width/2
                        buttonIconHeight: height
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.alignment_method=TextEdit.AlignHCenter;//居中对齐
                            }
                        }
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        buttonIconPath: "../Images/readview/globalRegistration.png"
                        border.color:  Settings.bookSetting.alignment_method===3?"red":"#eeeeee";
                        buttonIconWidth: width/2
                        buttonIconHeight: height
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.alignment_method=3;//左对齐

                            }
                        }
                    }
                    SettingButton1{
                        width: 50;
                        height: 30;
                        buttonIconPath: "../Images/readview/verticalAlignment.png"
                        border.color:  Settings.bookSetting.alignment_method===5?"red":"#eeeeee";
                        buttonIconWidth: width/2
                        buttonIconHeight: height
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.alignment_method=5;//左对齐
                            }
                        }
                    }
                    SettingButton1{
                        width: 30;
                        height: 30;
                        radius: 15
                        buttonIconPath: "../Images/readview/other.png"
                        buttonIconWidth: width/2
                        buttonIconHeight: height-5
                    }
                }
                RowLayout{
                    height: parent.height
                    Layout.leftMargin: 20;
                    Layout.bottomMargin: 30
                    spacing:   (root.width-5*50-30-2*Layout.leftMargin)*1.0/5
                    SettingButton3{
                        buttonColor: "#F0F0F0"
                        radius: 15
                        border.color:  Settings.bookSetting.theme===1?"red":"#eeeeee";
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.theme=1;
                            }
                        }
                    }
                    SettingButton3{
                        buttonColor: "#D8C0A8"
                        radius: 15
                        border.color:  Settings.bookSetting.theme===2?"red":"#eeeeee";
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.theme=2;
                            }
                        }
                    }
                    SettingButton3{
                        buttonColor: "#484848"
                        radius: 15
                        border.color:  Settings.bookSetting.theme===3?"red":"#eeeeee";
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.theme=3;
                            }
                        }
                    }
                    SettingButton3{
                        buttonColor: "#C0F0D8"
                        radius: 15
                        border.color:  Settings.bookSetting.theme===4?"red":"#eeeeee";
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.theme=4;
                            }
                        }
                    }
                    SettingButton3{
                        buttonColor: "#001830"
                        radius: 15
                        border.color:  Settings.bookSetting.theme===5?"red":"#eeeeee";
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                Settings.bookSetting.theme=5;
                            }
                        }
                    }
                    SettingButton1{
                        width: 30;
                        height: 30;
                        radius: 15
                        buttonIconPath: "../Images/readview/other.png"
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
                        spacing: (root.width-4*80-2*Layout.leftMargin)*1.0/3
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
                        spacing: (root.width-30*3-2*Layout.leftMargin)*1.0/2.0

                        SettingButton{
                            buttonIconPath: "../Images/readview/autoChangePage.png"
                            buttonBackColor : "transparent"
                            buttonText: qsTr("自动翻页")
                            width: 30;
                            height: 50;
                        }
                        SettingButton{
                            buttonIconPath: "../Images/readview/horzenScrenChange.png"
                            buttonBackColor : "transparent"
                            buttonText: qsTr("横屏")
                            width: 30;
                            height: 50;
                        }
                        SettingButton{
                            buttonIconPath: "../Images/readview/fullChangePage.png"
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
