import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle{
	id: transactionsPage
	color: "white"
	ColumnLayout{
		id: transactionsContent
		spacing: 24
		anchors.fill: parent
		Rectangle{
			id: transactionsHeader
			Layout.fillWidth: true
			Layout.preferredHeight: 75
			color: "white"
			Layout.alignment: Qt.AlignTop
			border.color: "black"
			RowLayout{
				anchors.fill: parent
				anchors.margins: 32
				anchors.leftMargin: 24
				anchors.rightMargin: 24
				Column{
					spacing: 4
					Layout.alignment: Qt.AlignLeft
					Text{
						id: transactionsTitle
						text: "Transactions"
						font.family: "IBM Plex Sans"
						font.pixelSize: 18
						font.weight: Font.Bold
						color: "#1a1d20"
					}
					Text{
						id: transactionsSubtitle
						text: "Tracks & Audit"
						font.family: "IBM Plex Sans"
						font.pixelSize: 12
						font.weight: Font.Normal
						color: "#8e9599"
					}
				}
				Text{
					text: "Hi Admin!"
					font.family: "IBM Plex Sans"
					font.pixelSize: 12
					font.weight: Font.DemiBold
					color: "#5a6266"
					Layout.alignment: Qt.AlignRight
							
				}
			}
		}
		ColumnLayout{
			Layout.fillWidth: true
			Layout.fillHeight: false
			spacing: 20
			Layout.leftMargin: 24
			Layout.rightMargin: 24
			Layout.alignment: Qt.AlignTop
			RowLayout{
				Layout.fillWidth: true
				Layout.preferredHeight: 87
				Layout.fillHeight: false
				spacing: 16
				Rectangle{
					id: todayTrx
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						spacing: 8
						padding: 16
						Text{
							text: "TODAY'S TRANSACTIONS"
							font.family: "IBM Plex Sans"
							font.pixelSize: 12
							font.weight: Font.DemiBold
							color: "#5a6266"
						}
						Text{
							text: "0"
							font.family: "IBM Plex Sans"
							font.pixelSize: 24
							font.weight: Font.Bold
							color: "#1a1d20"
						}
					}
				}
				Rectangle{
					id: todayRev
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						spacing: 8
						padding: 16
						Text{
							text: "TODAY'S REVENUE"
							font.family: "IBM Plex Sans"
							font.pixelSize: 12
							font.weight: Font.DemiBold
							color: "#5a6266"
						}
						Text{
							text: "0"
							font.family: "IBM Plex Sans"
							font.pixelSize: 24
							font.weight: Font.Bold
							color: "#1a1d20"
						}
					}
				}
				Rectangle{
					id: todayRef
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						spacing: 8
						padding: 16
						Text{
							text: "TODAY'S REFUND"
							font.family: "IBM Plex Sans"
							font.pixelSize: 12
							font.weight: Font.DemiBold
							color: "#5a6266"
						}
						Text{
							text: "0"
							font.family: "IBM Plex Sans"
							font.pixelSize: 24
							font.weight: Font.Bold
							color: "#1a1d20"
						}
					}
				}
			}
			RowLayout{
				Layout.fillWidth: true
				Layout.preferredHeight: 32
				Layout.fillHeight: false
				spacing: 16
				TextField{
					Layout.preferredWidth: 220
					Layout.fillHeight: true
					font.family: "IBM Plex Sans"
					font.pixelSize: 14
					font.weight: Font.Normal
					color: "#8E9599"
					placeholderText: "Search transactions..."
					placeholderTextColor: "#5a6266"
					verticalAlignment: Text.AlignVCenter
					leftPadding: 12
					rightPadding: 12
					Rectangle{
						id: trxSearchField
						color: "transparent"
					}
				}
				Rectangle{
					id: trxFilterDate
					Layout.preferredWidth: 116
					Layout.fillHeight: true
					border.color: "black"
				}
				Rectangle{
					id: trxFilterMethod
					Layout.preferredWidth: 114
					Layout.fillHeight: true
					border.color: "black"
				}
				Rectangle{
					id: trxFilterStatus
					Layout.preferredWidth: 114
					Layout.fillHeight: true
					border.color: "black"
				}
				Rectangle{
					id: trxExport
					Layout.preferredWidth: 114
					Layout.fillHeight: true
					border.color: "black"
					Layout.alignment: Qt.AlignRight
				}
			}
		}
		Item{
			Layout.fillHeight: true
			Layout.fillWidth: true
		}
	}
}