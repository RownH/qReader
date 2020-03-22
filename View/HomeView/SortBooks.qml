import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import QtQuick.Window 2.12
import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Controls.Styles 1.4
import "../../common"

Item {


    ToolBar {

        height: 0.07*rootwindow.height
        width: rootwindow.width
        z:2
        RowLayout {
            anchors.fill: parent
            IconButton {
                iconSource:"qrc:/Images/common/back.png"
                onClicked: homestackview.pop()
            }
            Label {
                text: "Stackview Example App"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }
    Rectangle{
        width:rootwindow.width
        height: rootwindow.height
        color: "red"
//        onAccepted: homestackview.pop()
    }
}
