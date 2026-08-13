import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1366
    height: 768
    title: "CoffeePOS v1.0"
    color: "#fbfbfb"
    Loader {
        id: mainLoader
        // Uji Coba Beda Sidebar
        property string member_status: "admin"
        //
        anchors.fill: parent
        source: member_status === "admin" ? "DashboardPage.qml" : "PosPage.qml"
    }
}
