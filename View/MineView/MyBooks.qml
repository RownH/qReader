import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import "../"


StackView{
    id: wodeshuji
    anchors.fill: parent
    Rectangle {
        id: rectangle1
        height: 50
        color: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        MouseArea{
            anchors.fill: parent
        }

        Text {
            x: 295
            y: 0
            width: 50
            height: 26
            text: qsTr("我的书籍")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 12
        }
        Button {
            x: 13
            y: 13
            anchors.left: parent.left
            anchors.leftMargin: parent.width/50
            anchors.top: parent.top
            anchors.topMargin: parent.width/50
            height: parent.width*3/40
            width: parent.width*3/40
            Image {
                anchors.fill: parent
                source: "qrc:/Images/common/back.png"
            }
            onClicked:{
                MineView.interactive=true
                basebar.visible=true
                wodepage.clear()
            }
        }
    }
    Rectangle {
        id: rectangle
        color: "#d8cccc"
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0


        GridView {
            id:grid
            cellHeight: rectangle.width/2
            cellWidth: rectangle.width/2
            property int fillMode: Image.PreserveAspectFit
            anchors.fill: parent
            clip: true
            model:filesModel
            delegate: imageDelegate
        }

        ListModel{
            id:filesModel
            ListElement{
                filePath:"qrc:/Images/homepage/switchimg/learn.jpg"
            }
            ListElement{
                filePath:"qrc:/Images/homepage/switchimg/learn.jpg"
            }
            ListElement{
                filePath:"qrc:/Images/homepage/switchimg/learn.jpg"
            }

        }

        function setFilesModel(){
            console.log(arguments[0])
            filesModel.clear();
            for(var i = 0; i < arguments[0].length; i++){
                var data = {"filePath": arguments[0][i]};
                filesModel.append(data);
                multiPics.currentIndex = 0;
            }
        }

        Component {
            id: imageDelegate
            Image {
                id:image
                width: grid.cellWidth - 10;
                height: grid.cellHeight - 10
                fillMode: grid.fillMode
                asynchronous: true
                source: filePath
                MouseArea{
                    id:mouseArea
                    anchors.fill: parent
                    onClicked: {
                        wodeshuji.push(read)
                        view.interactive=false
                        bar.visible=false
                    }
                }
            }
        }
//        Component{
//            id:read
//            ReadPage{
//                anchors.fill: parent
//            }
//        }
    }


}
