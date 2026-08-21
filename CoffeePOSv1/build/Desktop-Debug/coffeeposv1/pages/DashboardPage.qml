import QtQuick
import QtQuick.Layouts

Rectangle{
	id: dashboardPage
	color: "white"
	ColumnLayout{
		id: dashboardContent
		spacing: 24
		anchors.fill: parent
		Rectangle{
			id: dashboardHeader
			Layout.fillWidth: true
			Layout.preferredHeight: 75
			color: "white"
			Layout.alignment: Qt.AlignTop
			RowLayout{
				anchors.fill: parent
				anchors.margins: 32
				anchors.leftMargin: 24
				anchors.rightMargin: 24
				Column{
					spacing: 4
					Layout.alignment: Qt.AlignLeft
					Text{
						id: dashboardTitle
						text: "Dashboard"
						font.family: "IBM Plex Sans"
						font.pixelSize: 18
						font.weight: Font.Bold
						color: "#1a1d20"
					}
					Text{
						id: dashboardSubtitle
						text: "System Daily Operations Control"
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
			Layout.preferredHeight: 562
			spacing: 20
			Layout.leftMargin: 24
			Layout.rightMargin: 24
			RowLayout{
				Layout.fillWidth: true
				Layout.preferredHeight: 87
				spacing: 16
				Rectangle{
					id: todaySales
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						spacing: 8
						padding: 16
						Text{
							text: "TODAY'S SALES"
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
					id: countTrx
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						spacing: 8
						padding: 16
						Text{
							text: "TRANSACTION COUNT"
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
					id: avgTrx
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						spacing: 8
						padding: 16
						Text{
							text: "AVERAGE TRANSACTION VALUE"
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
				Layout.preferredHeight: 240
				spacing: 16
				Rectangle{
					id: lowStocksAlert
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						padding: 16
						spacing: 12
						Text{
							text: "Low Stock Alert"
							font.family: "IBM Plex Sans"
							font.pixelSize: 14
							font.weight: Font.Bold
							color: "#1a1d20"
						}
					}
				}
				Rectangle{
					id: bestSeller
					Layout.fillWidth: true
					Layout.fillHeight: true
					border.color: "black"
					Column{
						anchors.fill: parent
						padding: 16
						spacing: 12
						Text{
							text: "Best Seller Today"
							font.family: "IBM Plex Sans"
							font.pixelSize: 14
							font.weight: Font.Bold
							color: "#1a1d20"
						}
					}
				}
			}
			Rectangle{
				id: recentTrx
				Layout.fillWidth: true
				Layout.preferredHeight: 195
				border.color: "grey"
				Column{
						anchors.fill: parent
						padding: 16
						spacing: 12
						Text{
							text: "Recent Transaction"
							font.family: "IBM Plex Sans"
							font.pixelSize: 14
							font.weight: Font.Bold
							color: "#1a1d20"
						}
					}
			}
		}
		Rectangle{
			id: dashboardFooter
			Layout.fillWidth: true
			Layout.preferredHeight: 75
			color: "white"
			Layout.alignment: Qt.AlignBottom
		}
	}
}