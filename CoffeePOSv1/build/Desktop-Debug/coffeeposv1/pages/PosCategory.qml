import QtQuick
import QtQuick.Shapes

Rectangle {
    id: category_row
    property string activeTab: "All"
    y: 75

    height: 52
    width: 800

    border.color: "#dee2e6"
    border.width: 1
    color: "#ffffff"

    Rectangle {
        id: cat_tab_All

        x: 24
        y: 12

        height: 28
        width: 48

        border.color: "#dee2e6"
        border.width: 1
        color: activeTab === "All" ? "#dee2e6" : (tabAllMouse.containsMouse ? "#fef5e7" : "#efe3d8")
        radius: 2

        MouseArea{
            id: tabAllMouse
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onClicked: {
                console.log("All category clicked");
                // Here you can add the logic to filter products by "All" category
            }
        }

        Text {
            id: cat_label

            x: 16
            y: 6

            height: 16
            width: 17

            color: "#7b5c40"
            font.family: "IBM Plex Sans"
            font.pixelSize: 12
            font.weight: Font.DemiBold
            horizontalAlignment: Text.AlignLeft
            text: "All"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
        }
    }
    Rectangle {
        id: cat_tab_Coffee

        x: 80
        y: 12

        height: 28
        width: 69

        border.color: "#dee2e6"
        border.width: 1
        color: activeTab === "Coffee" ? "#fef5e7" : (tabCoffeeMouse.containsMouse ? "#fef5e7" : "#ffffff")
        radius: 2

        MouseArea{
            id: tabCoffeeMouse
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onClicked: {
                console.log("Coffee category clicked");
                activeTab: "Coffee"
                // Here you can add the logic to filter products by "Coffee" category
            }
        }

        Text {
            id: cat_label_1

            x: 16
            y: 6

            height: 16
            width: 38

            color: "#5a6266"
            font.family: "IBM Plex Sans"
            font.pixelSize: 12
            font.weight: Font.DemiBold
            horizontalAlignment: Text.AlignLeft
            text: "Coffee"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
        }
    }
    Rectangle {
        id: cat_tab_Tea

        x: 157
        y: 12

        height: 28
        width: 52

        border.color: "#dee2e6"
        border.width: 1
        color: tabTeaMouse.containsMouse ? "#fef5e7" : "#ffffff"
        radius: 2

        MouseArea{
            id: tabTeaMouse
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onClicked: {
                console.log("Tea category clicked");
                // Here you can add the logic to filter products by "Tea" category
            }
        }

        Text {
            id: cat_label_2

            x: 16
            y: 6

            height: 16
            width: 21

            color: "#5a6266"
            font.family: "IBM Plex Sans"
            font.pixelSize: 12
            font.weight: Font.DemiBold
            horizontalAlignment: Text.AlignLeft
            text: "Tea"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
        }
    }
    Rectangle {
        id: cat_tab_Pastries

        x: 217
        y: 12

        height: 28
        width: 78

        border.color: "#dee2e6"
        border.width: 1
        color: tabPastriesMouse.containsMouse ? "#fef5e7" : "#ffffff"
        radius: 2

        MouseArea{
            id: tabPastriesMouse
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onClicked: {
                console.log("Pastries category clicked");
                // Here you can add the logic to filter products by "Pastries" category
            }
        }

        Text {
            id: cat_label_3

            x: 16
            y: 6

            height: 16
            width: 47

            color: "#5a6266"
            font.family: "IBM Plex Sans"
            font.pixelSize: 12
            font.weight: Font.DemiBold
            horizontalAlignment: Text.AlignLeft
            text: "Pastries"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
        }
    }
    Rectangle {
        id: cat_tab_Snacks

        x: 303
        y: 12

        height: 28
        width: 72

        border.color: "#dee2e6"
        border.width: 1
        color: tabSnacksMouse.containsMouse ? "#fef5e7" : "#ffffff"
        radius: 2

        MouseArea{
            id: tabSnacksMouse
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onClicked: {
                console.log("Snacks category clicked");
                // Here you can add the logic to filter products by "Snacks" category
            }
        }

        Text {
            id: cat_label_4

            x: 16
            y: 6

            height: 16
            width: 41

            color: "#5a6266"
            font.family: "IBM Plex Sans"
            font.pixelSize: 12
            font.weight: Font.DemiBold
            horizontalAlignment: Text.AlignLeft
            text: "Snacks"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
        }
    }
    Rectangle {
        id: cat_tab_Other

        x: 383
        y: 12

        height: 28
        width: 64

        border.color: "#dee2e6"
        border.width: 1
        color: tabOtherMouse.containsMouse ? "#fef5e7" : "#ffffff"
        radius: 2

        MouseArea{
            id: tabOtherMouse
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onClicked: {
                console.log("Other category clicked");
                // Here you can add the logic to filter products by "Other" category
            }
        }

        Text {
            id: cat_label_5

            x: 16
            y: 6

            height: 16
            width: 33

            color: "#5a6266"
            font.family: "IBM Plex Sans"
            font.pixelSize: 12
            font.weight: Font.DemiBold
            horizontalAlignment: Text.AlignLeft
            text: "Other"
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignTop
        }
    }
}