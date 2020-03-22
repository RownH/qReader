import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "../common"


TabBar {
    property alias myModel: myModel
    property int lastIndex: 0

    id: bar
    currentIndex: 0

    ListModel {
        id: myModel
    }

    Repeater {
        id: repeater
        model: myModel

        TabButton {
            property alias imageSource: image.source
            property alias textColor: text.color

            anchors.top: repeater.bottom

            height: bar.height
            contentItem:Text{
                id: text
                text: modelText
                font.family: "Helvetica"
                horizontalAlignment: Text.AlignHCenter //水平方向居中
                verticalAlignment: Text.AlignBottom
                color: (model.index === bar.currentIndex) ? modelColorG : modelColor
            }
            background:Image{
                id: image
                width: 24
                height: 24
                anchors.bottom: text.bottom
                anchors.bottomMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
                source: (model.index === bar.currentIndex) ? modelSrcG : modelSrc
            }

            onClicked: {

            }
        }
    }
}
