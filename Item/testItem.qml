import QtQuick 2.12
Rectangle{
    Rectangle{
           width: 100;
           height: 100;
           border.color: "red";
        TextInput{
            anchors.fill: parent;
            text: "a";
            readOnly: false;
        }
    }
}
