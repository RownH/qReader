import QtQuick 2.0

Item {
    height: 120
    width: parent.width
    id:root;
    Image {
        id: image
        width: 100
        anchors.top: parent.top;
        anchors.left: parent.left;
        anchors.bottom: parent.bottom;
        source: "qrc:/qtquickplugin/images/template_image.png"
    }
    Rectangle{
        id:rightBox;
        width: parent.width
        color: "white";
        height: parent.height;
        anchors.left: image.right;
        anchors.leftMargin: 8
        Row{
            id:row;
            width: parent.width
            height: parent.height;
            anchors.left: image.right;
            anchors.leftMargin: 4
            Text {
                id: title;
                text: qsTr("文章标题")
                font{
                    pixelSize:17;
                }
                color: "black";
            }
            Text {
                anchors.top: title.bottom
                anchors.left: title.left
                id: author
                text: qsTr("作者")
                font{
                    pixelSize:15;
                }
                color: "#B0C4DE";
            }
            Text {
                anchors.top: author.bottom
                anchors.left: author.left
                anchors.right: parent.right
                wrapMode: Text.WrapAnywhere
                id: describe
                width: parent.width
                maximumLineCount: 2
                font.pointSize: 9
                clip: true
                renderType: Text.NativeRendering
                elide: Text.right
                horizontalAlignment: Text.AlignLeft
                color: "#696969"
                text: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                lineHeight: 0.9
                fontSizeMode: Text.FixedSize
            }
            Rectangle{
                id:rightBottombox;
                anchors.left: title.left
                anchors.bottom: row.bottom
                anchors.top: describe.bottom
                anchors.right: parent.right
                anchors.topMargin: 10;

                Column{
                    id: column
                    anchors.fill: parent
                    anchors.right: parent.right
                    Rectangle{
                        width:38
                        height:26
                        id:labelBox1;
                        radius: 4
                        border.width: 1
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 5
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
                        radius: 4
                        border.width: 1
                        anchors.left: labelBox1.right
                        anchors.leftMargin: 10
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 5
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
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom;
                        anchors.bottomMargin: 5
                        width: 80
                        height: 30
                        color: "blue"
                        radius: 6
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
}
