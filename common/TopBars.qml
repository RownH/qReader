import QtQuick 2.0

Item {
    id: control
    width: parent.width
    height: 56
    property alias color: background.color
    property alias text: title.text
    property bool raised: false

    MouseArea {
        id: eventEater
        anchors.fill: parent
    }

//    PaperShadow {
//        source: background
//        depth: control.raised ? 2 : 1
//    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: "white"
    }

    Text {
        id: title
        x: 20
        font.pixelSize: 20
        font.bold: true
        anchors.verticalCenter: parent.verticalCenter
        font.weight: Font.DemiBold
        color: "#666666"
    }
}








//import QtQuick 2.5
//import QtQuick.Controls 1.4
//import QtQuick.Layouts 1.2

//ToolBar {
//    id:booktoobar
//    height: 0.07*rootwindow.height
//    width: rootwindow.width
//    z:2
//    signal doSearch(string searchText)

//    RowLayout {
//        id: searchBar
////        width: parent.width
////        height:parent.height
//        spacing: 5



//        ToolButton {
//            id: searchButton
//            iconSource:"qrc:/Images/shelf/search.png"
//            onClicked: doSearch(searchText.text)
//        }

//        ToolButton {
//            id: addButton
//            iconSource:"qrc:/Images/shelf/add.png"
////            onClicked: menu.open()
////            anchors.right: booktoobar.right
//        }




//    }

//}
