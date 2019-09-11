import QtQuick 2.0

Rectangle{
    property alias buttonColor :root.color
    id:root;
    width: 50;
    height: 30;
    radius: 2;
    color:buttonColor;
}
