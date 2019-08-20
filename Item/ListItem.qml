import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
Rectangle {
    height: 120
    id:root;
    width: parent.width
    Image {
        id: image
        width: 100
        anchors.top: parent.top;
        anchors.left: parent.left;
        anchors.bottom: parent.bottom;
        source: "https://www.cnblogs.com/skins/chinaheart/images/header.jpg"
        BusyIndicator{
            id:busy;
            running: false;
            z:2;
            anchors.fill: parent;
        }
        onStatusChanged: {
            if(image.status===Image.Loading){
                busy.running=true;;

            }
            else if(image.status===Image.Ready){
                busy.running=false;
            }
            else{
                busy.running=true;
                }

        }

    }
    Rectangle{
        id:rightBox;
        width: parent.width-image.width-4
        height: parent.height;
        anchors.left: image.right;
        anchors.leftMargin: 4


        ColumnLayout{
            id:row;
            Layout.fillHeight: parent
            Layout.fillWidth: parent
            spacing: 5;
            Rectangle{
                Layout.alignment: Qt.AlignTop
                Layout.preferredHeight: 25;
                Layout.preferredWidth: parent.width
                Layout.maximumWidth: 25;
                Text {

                    anchors.fill: parent
                    id: title;
                    text: qsTr("文章标题")
                    verticalAlignment:Text.AlignTop
                    font{
                        pixelSize:17;
                    }
                    color: "black";

                }
            }
            Rectangle{
                Layout.alignment: Qt.AlignTop
                Layout.preferredHeight: 20;
                Layout.preferredWidth: parent.width
                Layout.maximumWidth: 20;

                Text {
                id: author
                anchors.fill: parent
                text: qsTr("作者")
                font{
                    pixelSize:15;
                }
                color: "#B0C4DE";

            }
            }
            Rectangle{
                Layout.alignment: Qt.AlignTop
                Layout.preferredHeight: 20;
                Layout.preferredWidth: root.width-image.width-10
                Layout.maximumWidth: root.width-image.width-10;
                Text {
                    anchors.fill: parent
                    id: describe
                    color: "#B0C4DE";
                    text:"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                    maximumLineCount: 2
                    lineHeight: 1
                    elide: Text.ElideRight

                }
            }
            Rectangle{
                Layout.alignment: Qt.AlignTop
                Layout.preferredHeight: 20;
                Layout.preferredWidth: root.width-image.width-10
                Layout.maximumWidth: root.width-image.width-10;
                id:rightBottombox;
                RowLayout{
                    id: column
                    spacing: 5
                    Rectangle{
                        width:38
                        height:26
                        id:labelBox1;
                        radius: 4
                        border.width: 1

                        Text {
                            id:label;
                            width: parent.width
                            height: 24
                            text: qsTr("美女")
                            verticalAlignment: Text.AlignTop
                            horizontalAlignment: Text.AlignHCenter
                            anchors.centerIn: parent.Center
                            color: "#e9ed44"
                        }
                        border.color: "#B0C4DE";
                    }
                    Rectangle{
                        width:38
                        height:26
                        id:labelBox2;
                        Layout.alignment: Qt.AlignLeft
                        radius: 4
                        border.width: 1
                        Text {
                            id:label2;
                            width: 36
                            height: 24
                            text: qsTr("热血")
                            verticalAlignment: Text.AlignTop
                            horizontalAlignment: Text.AlignHCenter
                            anchors.centerIn: parent.Center
                            color: "#e9ed44"
                        }
                        border.color: "#B0C4DE";
                    }

                    Rectangle{
                        width: 80
                        height: 30
                        color: "blue"
                        radius: 6
                        Layout.alignment:Qt.AlignRight

                        Text {
                            anchors.fill: parent
                            text: qsTr("阅读")
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color: "white"
                        }

                    }
                }
            }
        }
    }
    Component.onCompleted: {

    }
}
