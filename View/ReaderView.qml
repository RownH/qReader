import QtQuick 2.0
import QtQuick.Controls 2.5
Rectangle{
    id:root;
    width: 400;
    height: 480;
    property var backcolor:"black";
    property var fontcolor: "white";
    property var fontSize: 15;
    Rectangle{
        id:fonter;
        width: parent.width;
        height: 15;
        color: backcolor;
        z:3
        Text {
            anchors.left: parent.left;
            anchors.margins: 2
            id: name
            text: qsTr("第1章:序幕");
            font.pixelSize:10
            color: fontcolor
        }
    }
    Rectangle{
        width: 400;
        height: 470;
        anchors.top: fonter.bottom;
        color: "black"
        Flickable {

            id: view
            contentX: width;
            contentHeight: readerText.height;
            width: parent.width;
            height: parent.height;
            property var isSetting: 0
            //y:mouse.y-contentY
            Rectangle{
                width: parent.width;
                height: parent.height;
                color: "black";
                TextArea {
                    id:readerText;
                    width: parent.width
                    readOnly: true;
                    color: "white";
                    text: "TextArea\n...\n...\n...\n...\n...\n...\n\n...\n...\n...\n...\n...\n...\n\n...\n...\n...\n...\n...\n...\n\n...\n...\n...\n...\n...\n...\n\n...\n...\n...\n...\n...\n...\n\n...\n...\n...\n...\n...\n...\n\n...\n...\n...\n...\n...\n...\n"
                    wrapMode: Text.WrapAnywhere
                    onTextChanged: {
                        view.contentHeight=readerText.height;
                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            console.log(view.isSetting);
                            if(view.isSetting==0&& mouseX>width/2-width/5*1 && mouseX< width/2+width/5*1){
                                    view.isSetting=1;
                                    showFont.start();
                                    showFoot.start();
                            }
                            else if(view.isSetting==1 &&mouseY%root.height>fontSetter.height  && mouseY%root.height<root.height-footSetter.height){
                                   view.isSetting=0;
                            }

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
        color: backcolor;
        anchors.bottom: root.bottom;
        Text {
            color: fontcolor;
            anchors.left: parent.left;
            height: parent.height
            anchors.leftMargin: 5;
            id: currentRead;
            font.pixelSize: 10;
            font.italic: true;
            text: qsTr("0.09%");
        }
        Rectangle{
            width: 50;
            height: parent.height;
            anchors.right: parent.right;
            anchors.rightMargin: 5;
            color: backcolor;
            Text{
                anchors.left: parent.left;
                text: "10:00";
                color: fontcolor;
                font.pixelSize: 10
            }

        }

    }
    Rectangle{
        id:fontSetter;
        width: parent.width;
        height: 30;
        visible: view.isSetting;
        opacity: 0.9
        z:4;
        //anchors.top: parent.top;
        color: "#BC8F8F"
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
    Rectangle{
        id:footSetter;
        width: parent.width;
        height: 100;
        visible: view.isSetting;
        z:4
        opacity: 0
        color: "#BC8F8F"
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
