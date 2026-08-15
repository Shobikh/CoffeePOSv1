import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls
import QtQuick.Layouts

Window {
    visible: true
    width: 1366
    height: 768
    title: "DesktopAppCashier"
    RowLayout{
        anchors.fill: parent
        spacing: 0
        AdminSidebar{
            Layout.preferredWidth: 200
            Layout.fillHeight: true
            onNavigationRequested: (page) => mainStack.push(page)
        }
        StackView{
            id: mainStack
            Layout.fillWidth: true
            Layout.fillHeight: true
            initialItem: "DashboardPage.qml"
        }
    }
}
