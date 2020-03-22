import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Controls.Styles 1.4
import "../../common"

TopBars {

    signal doSearch(string searchText)

    RowLayout {
        id: searchBar
        width: 0.90*parent.width
        height:parent.height
        anchors.fill: parent
        anchors.margins: 5

        TextField {
            style: TextFieldStyle {
                    textColor: "black"
                    font.bold: true
                    background: Rectangle {
                        color: "transparent"//背景颜色
                        border.color: "gray"//边框颜色
                        radius: 20
                    }//设置风格
            }
            id: searchText
            placeholderText: qsTr("输入书籍名称...")
            Layout.fillWidth: true
            onAccepted: doSearch(searchText.text)
        }
        IconButton {
            id: searchButton_home
            iconSource:"qrc:/Images/homepage/search.png"
            onClicked: doSearch(searchText.text)
        }
    }

}
