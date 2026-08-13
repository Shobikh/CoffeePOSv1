import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle{
	id: loginPage
	color: "#f5ece5"

	Rectangle{
		id: loginCard
		width: 400
		height: 480
		anchors.centerIn: parent
		color: "#ffffff"
		radius: 4

		Column{
			spacing: 32
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.fill: parent
			anchors.margins: 40

			Column{
				id: loginCardHeader
				spacing: 12
				anchors.horizontalCenter: parent.horizontalCenter

				Image{
					id: appLogo
					source: Qt.resolvedUrl("assets/applogo.png")
					width: 48
					height: 48
					anchors.horizontalCenter: parent.horizontalCenter
				}
				Column{
					id: appTitleGroup
					width: parent.width
					spacing: 4

					Text{
						id: appTitle
						text: "Jahis Coffee"
						font.family: "IBM Plex Sans"
						font.pixelSize: 24
						font.weight: Font.Bold
						color: "#1a1d20"
						anchors.horizontalCenter: parent.horizontalCenter
					}
					Text{
						id: appSubtitle
						text: "Daily Operations Control"
						font.family: "IBM Plex Sans"
						font.pixelSize: 14
						font.weight: Font.Normal
						color: "#5a6266"
						anchors.horizontalCenter: parent.horizontalCenter
					}
				}
			}
			Column{
				id: loginCardForm
				width: parent.width
				spacing: 20
				
				Column{
					id: usernameForm
					spacing: 6
					width: parent.width

					Text{
						id: usernameFormLabel
						text: "USERNAME"
						font.family: "IBM Plex Sans"
						font.pixelSize: 12
						font.weight: Font.Bold
						color: "#5a6266"
					}
					TextField{
						id: usernameTextField
						width: parent.width
						height: 38
						font.family: "IBM Plex Sans"
						font.pixelSize: 14
						font.weight: Font.Normal
						color: "#1a1d20"
						placeholderText: "Enter your username"
						placeholderTextColor: "#5a6266"
						verticalAlignment: Text.AlignVCenter
						leftPadding: 12
						rightPadding: 12
						background: Rectangle{
							color: "transparent"
							radius: 10
							border.color: usernameTextField.activeFocus ? "#7b5c40" : "#5a6266"
						}
					}
				}
				Column{
					id: passwordForm
					spacing: 6
					width: parent.width

					Text{
						id: passwordFormLabel
						text: "PASSWORD"
						font.family: "IBM Plex Sans"
						font.pixelSize: 12
						font.weight: Font.Bold
						color: "#5a6266"
					}
					TextField{
						id: passwordTextField
						width: parent.width
						height: 38
						font.family: "IBM Plex Sans"
						font.pixelSize: 14
						font.weight: Font.Normal
						color: "#1a1d20"
						placeholderText: "Enter your password"
						placeholderTextColor: "#5a6266"
						verticalAlignment: Text.AlignVCenter
						leftPadding: 12
						rightPadding: 12
						background: Rectangle{
							color: "transparent"
							radius: 10
							border.color: passwordTextField ? "#7b5c40" : "#5a6266"	
						}
					}
				}
				RowLayout{
					id: otherLoginOption
					width: parent.width

					CheckBox{
						id: rememberMe
						text: "Remember Me"
						Layout.alignment: Qt.AlignLeft
						font.family: "IBM Plex Sans"
						font.pixelSize: 13
						font.weight: Font.Normal
					}
					Text{
						id: resetPassword
						text: "Reset Password"
						Layout.alignment: Qt.AlignRight
						font.family: "IBM Plex Sans"
						font.pixelSize: 13
						font.weight: Font.DemiBold
					}
				}
				Button{
					id: loginButton
					text: "LOGIN"
					palette.buttonText: hovered ? "black" : "white"
					width: parent.width
					height: 46
					font.family: "IBM Plex Sans"
					font.pixelSize: 14
					font.weight: Font.Bold
					hoverEnabled: true
					MouseArea{
						anchors.fill: parent
						cursorShape: Qt.PointingHandCursor
					}
					background: Rectangle{
						color: "#7b5c40"
						radius: 4
					}
				}
			}
		}
	}
}