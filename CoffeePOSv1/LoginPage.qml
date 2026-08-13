import QtQuick
import QtQuick.Shapes
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: login_page

    height: 768
    width: 1366
    color: "#f5ece5"
    Rectangle{
        id: login_card
        width: 400
        height: 480
        color: "#ffffff"
        radius: 10
        anchors.centerIn: parent
        Image{
            id: brand_logo
            source: "assets/top_header.png"
            width: 48
            height: 48
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 40
        }
        Text{
            id: brand_name
            text: "Jahis Coffee"
            font.family: "IBM Plex Sans"
            font.pixelSize: 24
            font.weight: Font.Bold
            color: "#1a1d20"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: brand_logo.bottom
            anchors.topMargin: 16
        }
        Text{
            id: brand_tagline
            text: "Daily Operations Control"
            font.family: "IBM Plex Sans"
            font.pixelSize: 14
            font.weight: Font.Normal
            color: "#5a6266"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: brand_name.bottom
            anchors.topMargin: 4
        }

        Rectangle{
            id: login_form
            width: 320
            height: 177
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: brand_tagline.bottom
            anchors.topMargin: 32
            //border.color: "#1a1d20"

            Rectangle{
                id: username_field
                width: 320
                height: 60
                anchors.top: parent.top
                anchors.topMargin: 0
                color: "#ffffff"
                //border.color: "#dee2e6"

                Text{
                    id: username_label
                    text: "USERNAME"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    color: "#5a6266"
                }
                Rectangle{
                    id: username_input
                    width: 320
                    height: 38
                    anchors.top: username_label.bottom
                    anchors.topMargin: 6
                    color: "#ffffff"
                    border.color: username_textfield.activeFocus ? "#f5ece5" : (username_input_mousearea.containsMouse ? "#f5ece5" : "#5a6266")
                    radius: 4
                    TextField{
                        id: username_textfield
                        anchors.fill: parent
                        anchors.margins: 8
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 14
                        font.weight: Font.Normal
                        color: "#1a1d20"
                        placeholderText: "Enter your username"
                        placeholderTextColor: "#5a6266"
                        background: Rectangle {
                            color: "transparent"
                        }
                        MouseArea{
                            id: username_input_mousearea
                            anchors.fill: parent
                            hoverEnabled: true
                            cursorShape: Qt.IBeamCursor
                            onClicked:{
                                username_textfield.forceActiveFocus()
                            }
                        }
                    }
                }
            }
            Rectangle{
                id: password_field
                width: 320
                height: 60
                anchors.top: username_field.bottom
                anchors.topMargin: 20
                color: "#ffffff"
                //border.color: "#dee2e6"
                radius: 4
                Text{
                    id: password_label
                    text: "PASSWORD"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    color: "#5a6266"
                }
                Rectangle{
                    id: password_input
                    width: 320
                    height: 38
                    anchors.top: password_label.bottom
                    anchors.topMargin: 6
                    color: "#ffffff"
                    border.color: password_textfield.activeFocus ? "#f5ece5" : (password_input_mousearea.containsMouse ? "#f5ece5" : "#5a6266")
                    radius: 4
                    TextField{
                        id: password_textfield
                        anchors.fill: parent
                        anchors.margins: 8
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 14
                        font.weight: Font.Normal
                        color: "#1a1d20"
                        placeholderText: "Enter your password"
                        placeholderTextColor: "#5a6266"
                        echoMode: TextInput.Password
                        background: Rectangle {
                            color: "transparent"
                        }
                        MouseArea{
                            id: password_input_mousearea
                            anchors.fill: parent
                            hoverEnabled: true
                            cursorShape: Qt.IBeamCursor
                            onClicked:{
                                password_textfield.forceActiveFocus()
                            }
                        }
                    }
                }
            }
            Rectangle{
                id: other_options_field
                width: 320
                height: 17
                anchors.top: password_field.bottom
                anchors.topMargin: 20
                color: "#ffffff"
                border.color: "#dee2e6"
            }
        }

        Rectangle{
            id: login_button
            width: 320
            height: 46
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: login_form.bottom
            anchors.topMargin: 32
            color: login_button_mousearea.containsMouse ? "#5a452d" : "#7b5c40"
            radius: 4

            Text{
                id: login_button_text
                text: "Login"
                font.family: "IBM Plex Sans"
                font.pixelSize: 14
                font.weight: Font.Bold
                color: "#ffffff"
                anchors.centerIn: parent
            }
            MouseArea{
                id: login_button_mousearea
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked:{
                    console.log("Login button clicked");
                    // Here you can add the logic to handle the login action
                }
            }
        }
    }
}