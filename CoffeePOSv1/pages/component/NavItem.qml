import QtQuick
import QtQuick.Layouts

Rectangle{
	id: navItem
	property string label: ""
	property bool isActive: false
	signal clicked()

	Layout.preferredWidth: 200
	Layout.fillWidth: true
	Layout.preferredHeight: 37
	color: isActive ? "grey" : (navArea.containsMouse? "#efe3d8" : "transparent")
	MouseArea{
		id: navArea
		anchors.fill: parent
		cursorShape: Qt.PointingHandCursor
		hoverEnabled: true
		onClicked: navItem.clicked()
	}

	Text{
		id: navLabel
		anchors.fill: parent
		text: navItem.label
		font.family: "IBM Plex Sans"
		font.pixelSize: 13
		font.weight: Font.Medium
		color: "#5a6266"
		leftPadding: 16
		verticalAlignment: Text.AlignVCenter
	}
}