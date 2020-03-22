import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0

Page{
    id: wodeshuji
    Rectangle {
        id: rectangle
        color: "#d8cccc"
        anchors.fill:parent
        GridView {
            id:grid
            cellHeight: 150
            cellWidth: 150
            anchors.fill: parent
            property int fillMode: Image.PreserveAspectFit
            model:filesModel
            delegate: imageDelegate
        }

        ListModel{
            id:filesModel

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
                    }
                }
            }
        }
    }
}
