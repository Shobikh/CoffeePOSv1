import QtQuick
import QtQuick.Layouts

Rectangle{
	id: sidebarCard
	Layout.preferredWidth: 200
	Layout.fillHeight: true
	color: "#f5ece5"
	property string activePage: "dashboard"
	signal navigationRequested(string page)
	ColumnLayout{
		id: sidebarContent
		spacing: 32
		Row{
			id: sidebarHeader
			spacing: 8
			Layout.leftMargin: 16
			Layout.topMargin: 32
			Image{
				id: appLogoSidebar
				source: "assets/applogo.png"
				width: 40
				height: 40
			}
			Column{
				id: sidebarTitle
				spacing: 4
				Text{
					text: "Jahis Coffee"
					font.family: "IBM Plex Sans"
					font.pixelSize: 16
					font.weight: Font.Bold
					color: "#1a1d20"
				}
				Text{
					text: "Jayyid wa Rokhis"
					font.family: "IBM Plex Sans"
					font.pixelSize: 12
					font.weight: Font.Normal
					color: "#5a6266"
				}
			}
		}
		ColumnLayout{
			id: navList
			spacing: 4
			Layout.fillWidth: true
			Layout.alignment: Qt.AlignTop
			NavItem{
				label: "Dashboard"
				isActive: sidebarCard.activePage === "DashboardPage.qml"
				onClicked: sidebarCard.navigationRequested("DashboardPage.qml")
			}
			NavItem{
				label: "POS"
				isActive: sidebarCard.activePage === "PosPage.qml"
				onClicked: sidebarCard.navigationRequested("PosPage.qml")
			}
			NavItem{
				label: "Products"
				isActive: sidebarCard.activePage === "ProductsPage.qml"
				onClicked: sidebarCard.navigationRequested("ProductsPage.qml")
			}
			NavItem{
				label: "Inventory"
				isActive: sidebarCard.activePage === "InventoryPage.qml"
				onClicked: sidebarCard.navigationRequested("InventoryPage.qml")
			}
			NavItem{
				label: "Suppliers"
				isActive: sidebarCard.activePage === "SuppliersPage.qml"
				onClicked: sidebarCard.navigationRequested("SuppliersPage.qml")
			}
			NavItem{
				label: "Transactions"
				isActive: sidebarCard.activePage === "TransactionsPage.qml"
				onClicked: sidebarCard.navigationRequested("TransactionsPage.qml")
			}
			NavItem{
				label: "Reports"
				isActive: sidebarCard.activePage === "ReportsPage.qml"
				onClicked: sidebarCard.navigationRequested("ReportsPage.qml")
			}
			NavItem{
				label: "Settings"
				isActive: sidebarCard.activePage === "SettingsPage.qml"
				onClicked: sidebarCard.navigationRequested("SettingsPage.qml")
			}
		}
	}
}