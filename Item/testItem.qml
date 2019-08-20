import QtQuick 2.0
Rectangle{
    width: 100;
    height: 100;
    Text {
        anchors.fill:parent;
        id: describe
        color: "#B0C4DE";
        text:"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
        maximumLineCount: 2
        lineHeight: 1
        wrapMode:Text.WrapAnywhere
        elide:Text.ElideRight
    }
}
