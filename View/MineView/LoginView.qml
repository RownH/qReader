import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "../savejson.js" as Data



Page{
    id: loginPage
    title: "Login"

    signal loginSucceeded
    property string time: Qt.formatDateTime(new Date(), "yyyy-MM-dd  hh-mm-ss  dddd")
    property bool hasname:false
    property bool password:false
    property var userimage: ""
    anchors.fill: parent

    Rectangle {
        id: loginForm
        width: loginPage.width*3/4
        height: loginPage.height/2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Text {
            y: 34
            text: "Login"
            font.pixelSize: loginPage.width*3/160+loginPage.height*3/200
            anchors.bottom: txtUsername.top
            anchors.bottomMargin: loginPage.height/100
            anchors.horizontalCenter: parent.horizontalCenter
        }



            Button {
                text: qsTr("Login")
                height: loginPage.height*2/25
                width: loginPage.width/4
                anchors.horizontalCenterOffset: 0
                anchors.top: parent.top
                anchors.topMargin: loginPage.height*17/50
                flat: false
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    Get.down_load()
                    time=Qt.formatDateTime(new Date(), "yyyy-MM-dd  hh-mm-ss  dddd")

                    var json = JSON.parse(fileio.text)
                    models.clear()
                    var count = json.TEXT.length
                    if(txtUsername.text.toString()==""){
                        reminder.text="请输入用户名!"
                        console.debug("Please enter the name!")
                    }else{
                        for (var i in json.TEXT) {

                            if(json.TEXT[ i ].name==txtUsername.text){
                                //userimage=json.TEXT[ i ].userimage
                                //console.log(userimage)
                                hasname = true
                                if(txtPassword.text==json.TEXT[ i ].password){
                                    password = true
                                }
                            }

                            var t = json.TEXT[ i ];
                            models.append( t );

                        }
                    }

                    var data = {
                        "name":txtUsername.text,
                        //"userimage":userimage,
                        "password":txtPassword.text,
                        "time":time
                    }

                    if(hasname == true&&password == true){
                        console.debug("Login Successful!")
                        models.append(data)
                    }else if((hasname == false)&&txtUsername.text.toString()!=""){

                        console.debug("Creat login Successful!")
                        models.append(data)
                    }else if(hasname == true&&password == false){
                        reminder.text="密码错误!"
                        console.debug("Password error!")
                    }

                    var res = Data.serialize(models);
                    fileio.text = res;

                    if(hasname == true&&password == true){
                        loginSucceeded()
                    }
                }
            }


            ListModel{
                id:models
            }


        Text {
            text: qsTr("name")
            anchors.verticalCenter: txtUsername.verticalCenter
            anchors.right: txtUsername.left
            anchors.rightMargin: loginPage.width/80
            font.pixelSize: loginPage.width*3/160+loginPage.height*3/200
        }

        TextField {
            id: txtUsername
            width: loginPage.width/2
            height: loginPage.height/11
            anchors.top: parent.top
            anchors.topMargin: loginPage.height*3/25
            anchors.right: parent.right
            anchors.rightMargin: loginPage.width/16
        }

        Text {
            text: qsTr("Password")
            anchors.verticalCenter: txtPassword.verticalCenter
            anchors.right: txtPassword.left
            anchors.rightMargin: loginPage.width/80
            font.pixelSize: loginPage.width*3/160+loginPage.height*3/200
        }

        TextField {
            id: txtPassword
            width: loginPage.width/2
            height: loginPage.height/11
            anchors.top: txtUsername.bottom
            anchors.topMargin: loginPage.height*3/100
            anchors.right: parent.right
            anchors.rightMargin: loginPage.width/16
            echoMode: TextInput.Password
        }
        Button {
                id:reminder
                text: ""
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.horizontalCenterOffset: 0
                flat: true
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                }
        }
    }
}
