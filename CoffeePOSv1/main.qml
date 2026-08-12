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
        anchors.fill: parent
        source: "Brewdesk_dashboard.qml"
    }
}
