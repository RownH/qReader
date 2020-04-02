
import QtQuick 2.12
import QtQuick.Controls 2.5

import QtQuick.Layouts 1.3
import "../../Item/bookshelf/readview"
import "../../Popup"
import"../../"
Rectangle{
    id:root;
    property var footColor: "#301818"
    anchors.fill: parent;
    /*C++注册的章节对象
    booksSource:小说的地址
    currengePage:小说的当前页数
    charts:小说每一章的信息
    currentChart:当前章数
    */
    //页头

    Rectangle{
        id:fonter;
        width: parent.width;
        height: 15;
        color: Settings.bookSetting.back_Color;
        z:3
        Text {
            anchors.left: parent.left;
            anchors.margins: 2
            id: read
            text:qsTr(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).chartAt(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart).name);
            font.pixelSize:10
            color: Settings.bookSetting.font_Color
        }
    }
    //主体部分
    Rectangle{
        width: parent.width;
        height: parent.height-footer.height-fonter.height;
        anchors.top: fonter.bottom;
        color: Settings.bookSetting.back_Color
        property var state: "base";
        property bool refresh: state == "pulled" ? true : false

        states: [
               State {
                   name: "base"; when: view.contentY >= -120//listWorkSheet列表控件
               },
               State {
                   name: "pulled"; when: view.contentY < -120//listWorkSheet列表控件

               }
           ]
        Flickable {

            id: view
            contentX: width;
            contentHeight:root.height>readerText.height?root.height:readerText.height
            width: parent.width;
            height: parent.height;

            property var isSetting: 0
            //y:mouse.y-contentY
            onDragEnded: {
                console.log(view.contentY-readerText.height)
                if (view.contentY< -60) {
                        if(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart<1){

                        }
                        else{
                            Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart--;
                            view.contentX=0;
                            view.contentY=0;
                        }
                    }
                else if(view.contentY-readerText.height>-500){
                    if(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart<Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).chartCount()-1){
                        Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart++;
                        view.contentX=0;
                        view.contentY=0;
                    }

                }
            }
            Rectangle{
                width: parent.width;
                height: parent.height;
                color: "transparent";
                TextEdit {
                    id:readerText;
                    width: parent.width
                    readOnly: true;
                    color: Settings.bookSetting.font_Color;
                    font.pixelSize: Settings.bookSetting.font_Size
                    text:Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).chartAt(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart).str
                    wrapMode: Text.WrapAnywhere
                    onTextChanged: {
                        view.contentHeight=root.height>readerText.height? root.height:readerText.height;
                    }
                   horizontalAlignment:Settings.bookSetting.alignment_method;
                    padding: 20

                }
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        if(footSetter.isBrightNess==1 && mouseY%root.height<root.height-showBrightNess.height){
                                footSetter.isBrightNess=0;
                        }
                        else if(footSetter.isSetting==1&&  mouseY%root.height<root.height-showSettingBottom.height){
                            footSetter.isSetting=0;
                        }
                        else if(view.isSetting==1 &&mouseY%root.height>fontSetter.height  && mouseY%root.height<root.height-footSetter.height){
                               view.isSetting=0;
                        }
                        else if(footSetter.isCatalogView==1 && mouseX>showCatalogs.width){
                                footSetter.isCatalogView=0;
                        }
                        else if(view.isSetting==0&& mouseX>width/2-width/5*1 && mouseX< width/2+width/5*1){
                                view.isSetting=1;
                                showFont.start();
                                showFoot.start();
                        }

                    }
                }
            }
        }
    }
    Rectangle{
        id:footer;
        width: parent.width;
        height: 15;
        color: Settings.bookSetting.back_Color;
        anchors.bottom: root.bottom;
        Text {
            color:Settings.bookSetting.back_Color;
            anchors.left: parent.left;
            height: parent.height
            anchors.leftMargin: 5;
            id: currentRead;
            font.pixelSize: 10;
            font.italic: true;
            text: qsTr((Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentPage/(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).chartCount()+0.0)).toString());
        }
        Rectangle{
            width: 50;
            height: parent.height;
            anchors.right: parent.right;
            anchors.rightMargin: 5;
            color: Settings.bookSetting.back_Color;
            Text{
                anchors.left: parent.left;
                text: Date().toString();
                color: Settings.bookSetting.font_Color;
                font.pixelSize: 10
            }

        }

    }
    //页头设置部分
    Rectangle{
        id:fontSetter;
        width: parent.width;
        height: 40;
        visible: view.isSetting;
        opacity: 0.9
        z:4;
        //anchors.top: parent.top;
        color: footColor
        Rectangle{
            width: parent.width-anchors.rightMargin-anchors.leftMargin;
            height: parent.height-anchors.topMargin-anchors.bottomMargin;
            anchors.top: parent.top;
            anchors.right: parent.right;
            anchors.left: parent.left;
            anchors.bottom: parent.bottom;
            anchors.bottomMargin: 10;
            anchors.topMargin: 10;
            anchors.rightMargin: 20;
            anchors.leftMargin: 20;
            color: "transparent";
            RowLayout{
                width: parent.width;
                height: parent.height;
                anchors.fill: parent;
                //左键头 表示返回
                Rectangle{
                    height: parent.height;
                    width: 20;
                    color: "transparent"
                    Image {
                        anchors.fill: parent;
                        source: "../../Images/readview/back.png"
                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            root.visible=0;
                            view.isSetting=0;
                            //当点击返回时，顶底部导航栏显示，swipeview滑动界面减去导航栏，并且swipeview可以滑动
                            topBars.visible=true;
                            basebar.visible=true;
                            swipeview.height=rootwindow.height - basebar.height;
                            swipeview.interactive=true;
                        }
                    }
                }
                Rectangle{
                    width: 100;
                    height: parent.height;
                    color: "transparent";
                }
                Rectangle{
                    id:buyButton;
                    height: parent.height;
                    width: 40;
                    radius: 8;
                    color: "transparent"
                    Text {
                        anchors.fill: parent;
                        text: qsTr("购买")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter;
                        color: "#FF4500"
                        font.pixelSize: 10;
                    }
                    border.color: "#FF4500"

                }
                Rectangle{
                    id:giftButton;
                       width: 25;
                       height: parent.height;
                       color: "transparent";
                       Image {
                           anchors.fill: parent;
                           source: "../../Images/readview/giftButton.png"
                       }
                }
                Rectangle{
                    id:headsetButton;
                       width: 25;
                       height: parent.height;
                       color: "transparent";
                       Image {
                           anchors.fill: parent;
                           source: "../../Images/readview/HeadsetButton.png"
                       }
                }
                Rectangle{
                    id:listButton;
                       width: 25;
                       height: parent.height;
                       color: "transparent";
                       Image {
                           anchors.fill: parent;
                           source: "../../Images/readview/listButton.png"
                       }
                }
            }

        }
        ParallelAnimation{
            id: showFont;
            PropertyAnimation{
                id: showFontY;
                target: fontSetter;
                from:root.height+footSetter.height;
                to:root.height-footSetter.height;
                duration: 1000
            }
            PropertyAnimation{
                id: showFontOpacy;
                target: fontSetter;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }
    }
    //页脚设置部分
    Rectangle{
        id:footSetter;
        width: parent.width;
        height: 100;
        visible: view.isSetting;
        color: footColor;
        property var isCatalogView: 0       //目录是否显示
        property var isBrightNess: 0
        property var isNeight: 0
        property var isSetting: 0
        ColumnLayout{
            height: 50;
            width: parent.width;
            anchors.fill: parent;
            anchors.leftMargin: 20;
            anchors.rightMargin: 20;
            RowLayout{
                    id:process;
                    height: parent.height
                    width: parent.width;
                    spacing: (parent.width-50-slider.width-50)/2
                    Rectangle{
                        width: 50;
                        height: 20;
                        color: "transparent"
                        Text {
                            color: "white"
                            text: qsTr("上一章")
                        }
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                if(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart<1){

                                }
                                else{
                                    Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart--;
                                    view.contentX=0;
                                    view.contentY=0;
                                }


                            }
                        }
                    }
                    Rectangle{
                        id:slider;
                        height: 50;
                        width: parent.width-150
                        color: "transparent"
                        Slider{
                            anchors.fill: parent;
                            width: parent.width;
                            from:0;
                            to:Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).chartCount()-1;
                            stepSize:1
                            value: Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart;
                            onMoved: {
                                Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart=value
                            }

                        }

                    }
                    Rectangle{
                        width: 50;
                        height: 20;
                        color: "transparent"
                        Text {
                            color:"white"
                            text: qsTr("下一章")

                        }
                        MouseArea{
                            anchors.fill: parent;
                            onClicked: {
                                if(Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart<Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).chartCount()-1){
                                    Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).currentChart++;
                                    view.contentX=0;
                                    view.contentY=0;
                                }
                            }
                        }
                    }
            }
            RowLayout{
                // spacing:10;
                width: parent.width;
                height: parent.height
                spacing: (parent.width-catalog.width-brightness.width-nightModel.width-set.width)/3.0
                SettingButton{
                    id:catalog;
                    width: 30;
                    height: 40;
                    buttonText :qsTr("目录")
                    buttonIconPath:"../../Images/readview/catalog.png";
                    buttonBackColor: "transparent";
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            showCatalogAnimation.start();
                            footSetter.isCatalogView=1;
                            view.isSetting=0;
                        }
                    }
                }
                SettingButton{
                    id:brightness
                    width: 30;
                    height: 40;
                    buttonText: qsTr("亮度")
                    buttonIconPath: "../../Images/readview/brightness.png"
                    buttonBackColor: "transparent"
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            showBrightNessAnimation.start();
                            footSetter.isBrightNess=1;
                            view.isSetting=0;

                        }

                    }
                }
                SettingButton{
                    id:nightModel
                    width: 30;
                    height: 40;
                    buttonText: qsTr("夜间")
                    buttonIconPath: "../../Images/readview/nightmodel.png"
                    buttonBackColor: "transparent"
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            footSetter.isNeight=!footSetter.isNeight;
                            nightModel.buttonIconPath=footSetter.isNeight?"../../Images/readview/nightmodel.png":"../../Images/readview/brightness.png"

                        }

                    }
                }
                SettingButton{
                    id:set;
                    width: 30;
                    height: 40;
                    buttonText: qsTr("设置")
                    buttonIconPath: "../../Images/readview/set.png"
                    buttonBackColor: "transparent"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            footSetter.isSetting=!footSetter.isSetting;
                            showSettingBottomAnimation.start();
                            view.isSetting=0;
                        }
                    }
                }
            }
            ParallelAnimation{
                id:showFoot;
                PropertyAnimation{
                    id: showFootY;
                    target: footSetter;
                    property:"y";
                    from:root.height+footSetter.height;
                    to:root.height-footSetter.height;
                    duration: 1000
                }
                PropertyAnimation{
                    id: showFootOpacy;
                    target: footSetter;
                    property:"opacity";
                    from:0
                    to:0.9
                    duration: 1
                }
            }
           }
      }
    PopupCatalog{
        id:showCatalogs;
        height: parent.height;
        width: parent.width-1.0/5.0*parent.width
        x:-width;
        z:3;
        visible: footSetter.isCatalogView;
        opacity: 0;
        cataModel: Settings.bookShelf.booksAt(Settings.bookShelf.currentBook).charts
        backColor: Settings.bookSetting.back_Color;
        fontColor: Settings.bookSetting.font_Color;
        ParallelAnimation{
            id:showCatalogAnimation;
            PropertyAnimation{
                id: showCatalogX;
                target: showCatalogs;
                property:"x";
                from:-width;
                to:0;
                duration: 1000
            }
            PropertyAnimation{
                id: showCatalogOpacty;
                target: showCatalogs;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }
    }
    BrightNess{
        id:showBrightNess;
        height: parent.height*1/4.0;
        width: parent.width;
        visible:footSetter.isBrightNess;
        color: footColor
        z:2;
        y:root.height+height;
        ParallelAnimation{
            id:showBrightNessAnimation;
            PropertyAnimation{
                target: showBrightNess ;
                property:"y";
                from:root.height+showBrightNess.height;
                to:root.height-showBrightNess.height;
                duration: 1000
            }
            PropertyAnimation{
                target: showCatalogs;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }


    }
    SettingBottom{
        id:showSettingBottom;
        visible: footSetter.isSetting
        width: parent.width;
        backgroundColor:footColor
        height: 200;
        y:root.height+height;
        z:2;
        ParallelAnimation{
            id:showSettingBottomAnimation;
            PropertyAnimation{
                target: showSettingBottom ;
                property:"y";
                from:root.height+showSettingBottom.height;
                to:root.height-showSettingBottom.height;
                duration: 1000
            }
            PropertyAnimation{
                target: showSettingBottom;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }
    }
}
