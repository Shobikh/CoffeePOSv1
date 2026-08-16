import QtQuick
import QtQuick.Shapes

Rectangle {
    id: reports_page

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"
    
    Loader{
        sourceComponent: mainLoader.member_status == "admin" ? sidebarAdmin : sidebarCashier
    }

    Component{
        id: sidebarAdmin
            AdminSidebar{
                activePage: "reports"
                x: 0
                y: 0
            }
    }

    Component{
        id: sidebarCashier
            CashierSidebar{
                activePage: "reports"
                x: 0
                y: 0
            }
    }

    Rectangle {
        id: main_content

        x: 200

        height: 768
        width: 1166

        color: "transparent"

        Image {
            id: top_header

            source: Qt.resolvedUrl("assets/top_header_6.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 363

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 68

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Reports"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 364

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Performance evaluation, product analytics, and revenue summaries"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
            Rectangle {
                id: user_profile_badge

                x: 984
                y: 25.50

                height: 24
                width: 158

                color: "transparent"

                Text {
                    id: cashier_label

                    y: 3.50

                    height: 17
                    width: 85

                    color: "#5a6266"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 13
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Cashier Mode:"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Rectangle {
                    id: cashier_pill

                    x: 92

                    height: 24
                    width: 66

                    color: "#efe3d8"
                    radius: 2

                    Text {
                        id: cashier_name

                        x: 10
                        y: 4

                        height: 16
                        width: 47

                        color: "#7b5c40"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Elena R."
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
        }
        Rectangle {
            id: scrollable_pane

            y: 75

            height: 693
            width: 1166

            color: "transparent"

            Rectangle {
                id: reports_control

                x: 24
                y: 24

                height: 33
                width: 1118

                color: "transparent"

                Rectangle {
                    id: left_selectors

                    height: 33
                    width: 160

                    color: "transparent"

                    Rectangle {
                        id: dropdown

                        height: 33
                        width: 160

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: dropdown_text

                            x: 12
                            y: 8

                            height: 17
                            width: 119

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Timeline: This Week"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: chevron_down

                            x: 138
                            y: 11.50

                            height: 10
                            width: 10

                            clip: true
                            color: "transparent"

                            Shape {
                                id: _vector_9

                                height: 10
                                width: 10

                                ShapePath {
                                    id: _vector_9_ShapePath0

                                    fillColor: "#00000000"
                                    strokeColor: "#5a6266"
                                    strokeWidth: 2

                                    PathSvg {
                                        id: _vector_9_ShapePath0_PathSvg0

                                        path: "M 0 0 L 5 10 L 10 0"
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: actions

                    x: 878

                    height: 33
                    width: 240

                    color: "transparent"

                    Rectangle {
                        id: btn_secondary

                        height: 33
                        width: 100

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: export_PDF

                            x: 16
                            y: 8

                            height: 17
                            width: 69

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Export PDF"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: btn_primary

                        x: 112

                        height: 33
                        width: 128

                        color: "#7b5c40"

                        Text {
                            id: print_Statement

                            x: 16
                            y: 8

                            height: 17
                            width: 97

                            color: "#ffffff"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Print Statement"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
            }
            Rectangle {
                id: sales_summary_row

                x: 24
                y: 77

                height: 85
                width: 1118

                color: "transparent"

                Rectangle {
                    id: stat_tile

                    height: 85
                    width: 267.50

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label

                        x: 16
                        y: 16

                        height: 14
                        width: 87

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Total Revenue"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value

                        x: 16
                        y: 38

                        height: 31
                        width: 145

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$12,482.00"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: stat_tile_1

                    x: 283.50

                    height: 85
                    width: 267.50

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label_1

                        x: 16
                        y: 16

                        height: 14
                        width: 121

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Total Transactions"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value_1

                        x: 16
                        y: 38

                        height: 31
                        width: 73

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "1,418"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: stat_tile_2

                    x: 567

                    height: 85
                    width: 267.50

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label_2

                        x: 16
                        y: 16

                        height: 14
                        width: 131

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Average Transaction"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value_2

                        x: 16
                        y: 38

                        height: 31
                        width: 73

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$8.80"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: stat_tile_3

                    x: 850.50

                    height: 85
                    width: 267.50

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label_3

                        x: 16
                        y: 16

                        height: 14
                        width: 66

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Items Sold"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value_3

                        x: 16
                        y: 38

                        height: 31
                        width: 73

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "2,140"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: mid_tables_row

                x: 24
                y: 182

                height: 183
                width: 1118

                color: "transparent"

                Rectangle {
                    id: category_sales

                    height: 183
                    width: 551

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: panel_title

                        x: 16
                        y: 16

                        height: 18
                        width: 119

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "Sales by Category"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Rectangle {
                        id: table

                        x: 16
                        y: 46

                        height: 121
                        width: 519

                        color: "transparent"

                        Image {
                            id: table_headers

                            source: Qt.resolvedUrl("assets/table_headers.png")

                            Rectangle {
                                id: header_cell

                                height: 14
                                width: 219

                                color: "transparent"

                                Text {
                                    id: header_label

                                    height: 14
                                    width: 59

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Category"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: header_cell_1

                                x: 219

                                height: 14
                                width: 100

                                color: "transparent"

                                Text {
                                    id: header_label_1

                                    height: 14
                                    width: 66

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Items Sold"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: header_cell_2

                                x: 319

                                height: 14
                                width: 100

                                color: "transparent"

                                Text {
                                    id: header_label_2

                                    height: 14
                                    width: 52

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Revenue"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: header_cell_3

                                x: 419

                                height: 14
                                width: 100

                                color: "transparent"

                                Text {
                                    id: header_label_3

                                    x: 54

                                    height: 14
                                    width: 48

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "% Total"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Image {
                            id: table_row

                            y: 22

                            source: Qt.resolvedUrl("assets/table_row.png")

                            Text {
                                id: coffee_1

                                y: 8

                                height: 17
                                width: 220

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Coffee"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element

                                x: 219
                                y: 8

                                height: 17
                                width: 101

                                color: "#5a6266"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "1,245"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_1

                                x: 319
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "$6,225.00"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_2

                                x: 419
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignRight
                                text: "49.8%"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                        }
                        Image {
                            id: table_row_1

                            y: 55

                            source: Qt.resolvedUrl("assets/table_row_1.png")

                            Text {
                                id: pastries

                                y: 8

                                height: 17
                                width: 220

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Pastries"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_3

                                x: 219
                                y: 8

                                height: 17
                                width: 101

                                color: "#5a6266"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "584"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_4

                                x: 319
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "$3,796.00"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_5

                                x: 419
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignRight
                                text: "30.4%"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                        }
                        Image {
                            id: table_row_2

                            y: 88

                            source: Qt.resolvedUrl("assets/table_row_2.png")

                            Text {
                                id: tea

                                y: 8

                                height: 17
                                width: 220

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Tea"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_6

                                x: 219
                                y: 8

                                height: 17
                                width: 101

                                color: "#5a6266"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "311"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_7

                                x: 319
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "$2,461.00"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_8

                                x: 419
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignRight
                                text: "19.8%"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                }
                Rectangle {
                    id: best_sellers

                    x: 567

                    height: 183
                    width: 551

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: panel_title_1

                        x: 16
                        y: 16

                        height: 18
                        width: 142

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "Best Selling Products"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Rectangle {
                        id: table_1

                        x: 16
                        y: 46

                        height: 121
                        width: 519

                        color: "transparent"

                        Image {
                            id: table_headers_1

                            source: Qt.resolvedUrl("assets/table_headers_1.png")

                            Rectangle {
                                id: header_cell_4

                                height: 14
                                width: 60

                                color: "transparent"

                                Text {
                                    id: header_label_4

                                    height: 14
                                    width: 33

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Rank"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: header_cell_5

                                x: 60

                                height: 14
                                width: 259

                                color: "transparent"

                                Text {
                                    id: header_label_5

                                    height: 14
                                    width: 87

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Product Name"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: header_cell_6

                                x: 319

                                height: 14
                                width: 100

                                color: "transparent"

                                Text {
                                    id: header_label_6

                                    height: 14
                                    width: 54

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Qty Sold"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: header_cell_7

                                x: 419

                                height: 14
                                width: 100

                                color: "transparent"

                                Text {
                                    id: header_label_7

                                    x: 50

                                    height: 14
                                    width: 52

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Revenue"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Image {
                            id: table_row_3

                            y: 22

                            source: Qt.resolvedUrl("assets/table_row_3.png")

                            Text {
                                id: element_9

                                y: 8

                                height: 17
                                width: 61

                                color: "#7b5c40"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "1."
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: iced_Oat_Latte

                                x: 60
                                y: 8

                                height: 17
                                width: 260

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Iced Oat Latte"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_10

                                x: 319
                                y: 8

                                height: 17
                                width: 101

                                color: "#5a6266"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "412"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_11

                                x: 419
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignRight
                                text: "$2,266.00"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                        }
                        Image {
                            id: table_row_4

                            y: 55

                            source: Qt.resolvedUrl("assets/table_row_4.png")

                            Text {
                                id: element_12

                                y: 8

                                height: 17
                                width: 61

                                color: "#7b5c40"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "2."
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: espresso_Double_Shot

                                x: 60
                                y: 8

                                height: 17
                                width: 260

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Espresso Double Shot"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_13

                                x: 319
                                y: 8

                                height: 17
                                width: 101

                                color: "#5a6266"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "388"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_14

                                x: 419
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignRight
                                text: "$1,358.00"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                        }
                        Image {
                            id: table_row_5

                            y: 88

                            source: Qt.resolvedUrl("assets/table_row_5.png")

                            Text {
                                id: element_15

                                y: 8

                                height: 17
                                width: 61

                                color: "#7b5c40"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "3."
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: butter_Croissant

                                x: 60
                                y: 8

                                height: 17
                                width: 260

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Butter Croissant"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_16

                                x: 319
                                y: 8

                                height: 17
                                width: 101

                                color: "#5a6266"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "295"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: element_17

                                x: 419
                                y: 8

                                height: 17
                                width: 101

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignRight
                                text: "$1,327.50"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                        }
                    }
                }
            }
            Rectangle {
                id: payment_method_card

                x: 24
                y: 385

                height: 142
                width: 1118

                border.color: "#dee2e6"
                border.width: 1
                color: "#ffffff"

                Text {
                    id: panel_title_2

                    x: 16
                    y: 16

                    height: 18
                    width: 171

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 14
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Sales by Payment Method"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Rectangle {
                    id: payment_split_cols

                    x: 16
                    y: 46

                    height: 80
                    width: 1086

                    color: "transparent"

                    Rectangle {
                        id: payment_col

                        height: 80
                        width: 351.33

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "transparent"

                        Text {
                            id: cash_Transactions

                            x: 16
                            y: 16

                            height: 14
                            width: 117

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Cash Transactions"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: frame

                            x: 16
                            y: 38

                            height: 26
                            width: 164

                            color: "transparent"

                            Text {
                                id: element_18

                                height: 26
                                width: 109

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 20
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "$3,412.50"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                            Text {
                                id: element_19

                                x: 116
                                y: 8

                                height: 17
                                width: 49

                                color: "#8e9599"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "• 27.3%"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: payment_col_1

                        x: 367.33

                        height: 80
                        width: 351.33

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "transparent"

                        Text {
                            id: card_Transactions

                            x: 16
                            y: 16

                            height: 14
                            width: 118

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Card Transactions"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: frame_1

                            x: 16
                            y: 38

                            height: 26
                            width: 164

                            color: "transparent"

                            Text {
                                id: element_20

                                height: 26
                                width: 109

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 20
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "$7,120.00"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                            Text {
                                id: element_21

                                x: 116
                                y: 8

                                height: 17
                                width: 49

                                color: "#8e9599"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "• 57.1%"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: payment_col_2

                        x: 734.67

                        height: 80
                        width: 351.33

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "transparent"

                        Text {
                            id: digital_Wallet_Transactions

                            x: 16
                            y: 16

                            height: 14
                            width: 177

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Digital Wallet Transactions"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: frame_2

                            x: 16
                            y: 38

                            height: 26
                            width: 164

                            color: "transparent"

                            Text {
                                id: element_22

                                height: 26
                                width: 109

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 20
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "$1,949.50"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                            Text {
                                id: element_23

                                x: 116
                                y: 8

                                height: 17
                                width: 49

                                color: "#8e9599"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "• 15.6%"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                }
            }
        }
    }
}