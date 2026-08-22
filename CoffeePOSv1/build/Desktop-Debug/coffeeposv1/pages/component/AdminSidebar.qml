import QtQuick
import QtQuick.Layouts
// import "file://C:/Users/JuraganIwak/source/repos/CoffeePOSv1/CoffeePOSv1/assets/" as AppLogo
// import ".."

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
				source: ("../assets/applogo.png")
				width: 40
				height: 40
			}
			Column{
				id: sidebarTitle
				spacing: 4
				Text{
					text: "Mardja Coffee"
					font.family: "IBM Plex Sans"
					font.pixelSize: 16
					font.weight: Font.Bold
					color: "#1a1d20"
				}
				Text{
					text: "Sunggingan, Kota Kudus"
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
				isActive: sidebarCard.activePage === "pages/DashboardPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/DashboardPage.qml")
			}
			NavItem{
				label: "POS"
				isActive: sidebarCard.activePage === "pages/PosPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/PosPage.qml")
			}
			NavItem{
				label: "Products"
				isActive: sidebarCard.activePage === "pages/ProductsPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/ProductsPage.qml")
			}
			NavItem{
				label: "Inventory"
				isActive: sidebarCard.activePage === "pages/InventoryPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/InventoryPage.qml")
			}
			NavItem{
				label: "Suppliers"
				isActive: sidebarCard.activePage === "pages/SuppliersPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/SuppliersPage.qml")
			}
			NavItem{
				label: "Transactions"
				isActive: sidebarCard.activePage === "pages/TransactionsPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/TransactionsPage.qml")
			}
			NavItem{
				label: "Reports"
				isActive: sidebarCard.activePage === "pages/ReportsPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/ReportsPage.qml")
			}
			NavItem{
				label: "Settings"
				isActive: sidebarCard.activePage === "pages/SettingsPage.qml"
				onClicked: sidebarCard.navigationRequested("pages/SettingsPage.qml")
			}
		}
	}
}
