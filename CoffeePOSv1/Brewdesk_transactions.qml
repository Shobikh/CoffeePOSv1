import QtQuick
import QtQuick.Shapes

Rectangle {
    id: brewdesk_transactions

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"

    Loader{
        sourceComponent: mainLoader.member_status == "admin" ? sidebarAdmin : sidebarCashier
    }

    Component{
        id: sidebarAdmin
            Sidebar{
                activePage: "transactions"
                x: 0
                y: 0
            }
    }

    Component{
        id: sidebarCashier
            Sidebar_Member{
                activePage: "transactions"
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

            source: Qt.resolvedUrl("assets/top_header_5.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 243

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 110

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Transactions"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 244

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Audit and track historic daily operational logs"
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
                id: stats_row

                x: 24
                y: 24

                height: 85
                width: 1118

                color: "transparent"

                Rectangle {
                    id: stat_tile

                    height: 85
                    width: 362

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label

                        x: 16
                        y: 16

                        height: 14
                        width: 133

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Today's Transactions"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value

                        x: 16
                        y: 38

                        height: 31
                        width: 45

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "214"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: stat_tile_1

                    x: 378

                    height: 85
                    width: 362

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label_1

                        x: 16
                        y: 16

                        height: 14
                        width: 99

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Today's Revenue"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value_1

                        x: 16
                        y: 38

                        height: 31
                        width: 131

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$1,842.50"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: stat_tile_2

                    x: 756

                    height: 85
                    width: 362

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label_2

                        x: 16
                        y: 16

                        height: 14
                        width: 90

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 11
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Refunds Today"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value_2

                        x: 16
                        y: 38

                        height: 31
                        width: 88

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$42.00"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: toolbar

                x: 24
                y: 129

                height: 33
                width: 1118

                color: "transparent"

                Rectangle {
                    id: search_filters

                    height: 33
                    width: 618

                    color: "transparent"

                    Rectangle {
                        id: search_box

                        height: 33
                        width: 260

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Rectangle {
                            id: search_icon

                            x: 12
                            y: 9.50

                            height: 14
                            width: 14

                            clip: true
                            color: "transparent"

                            Shape {
                                id: _vector_9

                                height: 14
                                width: 14

                                ShapePath {
                                    id: _vector_9_ShapePath0

                                    fillColor: "#00000000"
                                    strokeColor: "#5a6266"
                                    strokeWidth: 2

                                    PathSvg {
                                        id: _vector_9_ShapePath0_PathSvg0

                                        path: "M 13.999999999999998 13.999999999999998 L 10.624473758018059 10.624473758018059 M 12.444336786149208 6.222168393074604 C 12.444336786149208 9.65857667256668 9.65857667256668 12.444336786149208 6.222168393074604 12.444336786149208 C 2.7857597956938616 12.444336786149208 0 9.65857667256668 0 6.222168393074604 C 0 2.7857597956938616 2.7857597956938616 0 6.222168393074604 0 C 9.65857667256668 0 12.444336786149208 2.7857597956938616 12.444336786149208 6.222168393074604 Z"
                                    }
                                }
                            }
                        }
                        Text {
                            id: placeholder

                            x: 34
                            y: 8

                            height: 17
                            width: 136

                            color: "#8e9599"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Search by ID, Cashier..."
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: dropdown

                        x: 272

                        height: 33
                        width: 111

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: dropdown_text

                            x: 12
                            y: 8

                            height: 17
                            width: 70

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Date: Today"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: chevron_down

                            x: 89
                            y: 11.50

                            height: 10
                            width: 10

                            clip: true
                            color: "transparent"

                            Shape {
                                id: _vector_10

                                height: 10
                                width: 10

                                ShapePath {
                                    id: _vector_10_ShapePath0

                                    fillColor: "#00000000"
                                    strokeColor: "#5a6266"
                                    strokeWidth: 2

                                    PathSvg {
                                        id: _vector_10_ShapePath0_PathSvg0

                                        path: "M 0 0 L 5 10 L 10 0"
                                    }
                                }
                            }
                        }
                    }
                    Rectangle {
                        id: dropdown_1

                        x: 395

                        height: 33
                        width: 109

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: dropdown_text_1

                            x: 12
                            y: 8

                            height: 17
                            width: 68

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Method: All"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: chevron_down_1

                            x: 87
                            y: 11.50

                            height: 10
                            width: 10

                            clip: true
                            color: "transparent"

                            Shape {
                                id: _vector_11

                                height: 10
                                width: 10

                                ShapePath {
                                    id: _vector_11_ShapePath0

                                    fillColor: "#00000000"
                                    strokeColor: "#5a6266"
                                    strokeWidth: 2

                                    PathSvg {
                                        id: _vector_11_ShapePath0_PathSvg0

                                        path: "M 0 0 L 5 10 L 10 0"
                                    }
                                }
                            }
                        }
                    }
                    Rectangle {
                        id: dropdown_2

                        x: 516

                        height: 33
                        width: 102

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: dropdown_text_2

                            x: 12
                            y: 8

                            height: 17
                            width: 61

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Status: All"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: chevron_down_2

                            x: 80
                            y: 11.50

                            height: 10
                            width: 10

                            clip: true
                            color: "transparent"

                            Shape {
                                id: _vector_12

                                height: 10
                                width: 10

                                ShapePath {
                                    id: _vector_12_ShapePath0

                                    fillColor: "#00000000"
                                    strokeColor: "#5a6266"
                                    strokeWidth: 2

                                    PathSvg {
                                        id: _vector_12_ShapePath0_PathSvg0

                                        path: "M 0 0 L 5 10 L 10 0"
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: quick_action_export

                    x: 1018

                    height: 33
                    width: 100

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"
                    radius: 2

                    Text {
                        id: btn_label

                        x: 16
                        y: 8

                        height: 17
                        width: 69

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Export CSV"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: product_table_card

                x: 24
                y: 182

                height: 177
                width: 1118

                border.color: "#dee2e6"
                border.width: 1
                color: "#ffffff"

                Rectangle {
                    id: header_row

                    height: 42
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#faf6ef"

                    Rectangle {
                        id: header_cell

                        x: 14
                        y: 14

                        height: 14
                        width: 140

                        color: "transparent"

                        Text {
                            id: header_label

                            height: 14
                            width: 94

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Transaction ID"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_1

                        x: 154
                        y: 14

                        height: 14
                        width: 160

                        color: "transparent"

                        Text {
                            id: header_label_1

                            height: 14
                            width: 61

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Date/Time"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_2

                        x: 314
                        y: 14

                        height: 14
                        width: 140

                        color: "transparent"

                        Text {
                            id: header_label_2

                            height: 14
                            width: 50

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Cashier"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_3

                        x: 454
                        y: 14

                        height: 14
                        width: 100

                        color: "transparent"

                        Text {
                            id: header_label_3

                            height: 14
                            width: 36

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Items"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_4

                        x: 554
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_4

                            height: 14
                            width: 52

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Payment"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_5

                        x: 674
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_5

                            height: 14
                            width: 42

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Status"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_6

                        x: 794
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_6

                            height: 14
                            width: 35

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Total"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_7

                        x: 914
                        y: 14

                        height: 14
                        width: 190

                        color: "transparent"

                        Text {
                            id: header_label_7

                            x: 142

                            height: 14
                            width: 50

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Actions"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: row_item

                    y: 42

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: tx_id

                        x: 14
                        y: 14

                        height: 17
                        width: 141

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "TX-1092"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_time

                        x: 154
                        y: 14

                        height: 17
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Today, 11:24 AM"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_cashier

                        x: 314
                        y: 14

                        height: 17
                        width: 141

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Elena R."
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_items

                        x: 454
                        y: 14

                        height: 17
                        width: 101

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "3 items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_method

                        x: 554
                        y: 14

                        height: 17
                        width: 121

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Card"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame

                        x: 674
                        y: 14

                        height: 17
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: status_badge

                            height: 17
                            width: 74

                            color: "#eaf7ee"
                            radius: 2

                            Text {
                                id: badge_text

                                x: 8
                                y: 2

                                height: 13
                                width: 59

                                color: "#2b7a4b"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Completed"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Text {
                        id: tx_total

                        x: 794
                        y: 14

                        height: 17
                        width: 121

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$12.50"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: row_actions

                        x: 914
                        y: 14

                        height: 17
                        width: 190

                        color: "transparent"

                        Text {
                            id: act_view

                            x: 114

                            height: 17
                            width: 77

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "View Details"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: row_item_1

                    y: 87

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: tx_id_1

                        x: 14
                        y: 14

                        height: 17
                        width: 141

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "TX-1085"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_time_1

                        x: 154
                        y: 14

                        height: 17
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Today, 09:45 AM"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_cashier_1

                        x: 314
                        y: 14

                        height: 17
                        width: 141

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Elena R."
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_items_1

                        x: 454
                        y: 14

                        height: 17
                        width: 101

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "2 items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_method_1

                        x: 554
                        y: 14

                        height: 17
                        width: 121

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Cash"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame_1

                        x: 674
                        y: 14

                        height: 17
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: status_badge_1

                            height: 17
                            width: 69

                            color: "#fef5e7"
                            radius: 2

                            Text {
                                id: badge_text_1

                                x: 8
                                y: 2

                                height: 13
                                width: 54

                                color: "#b17a32"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Refunded"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Text {
                        id: tx_total_1

                        x: 794
                        y: 14

                        height: 17
                        width: 121

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$8.40"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: row_actions_1

                        x: 914
                        y: 14

                        height: 17
                        width: 190

                        color: "transparent"

                        Text {
                            id: act_view_1

                            x: 114

                            height: 17
                            width: 77

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "View Details"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: row_item_2

                    y: 132

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: tx_id_2

                        x: 14
                        y: 14

                        height: 17
                        width: 141

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "TX-1074"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_time_2

                        x: 154
                        y: 14

                        height: 17
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Yesterday, 04:12 PM"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_cashier_2

                        x: 314
                        y: 14

                        height: 17
                        width: 141

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Marcus K."
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_items_2

                        x: 454
                        y: 14

                        height: 17
                        width: 101

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "5 items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: tx_method_2

                        x: 554
                        y: 14

                        height: 17
                        width: 121

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Mobile"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame_2

                        x: 674
                        y: 14

                        height: 17
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: status_badge_2

                            height: 17
                            width: 54

                            color: "#fceaea"
                            radius: 2

                            Text {
                                id: badge_text_2

                                x: 8
                                y: 2

                                height: 13
                                width: 39

                                color: "#a53f3f"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Voided"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Text {
                        id: tx_total_2

                        x: 794
                        y: 14

                        height: 17
                        width: 121

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$22.80"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: row_actions_2

                        x: 914
                        y: 14

                        height: 17
                        width: 190

                        color: "transparent"

                        Text {
                            id: act_view_2

                            x: 114

                            height: 17
                            width: 77

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 13
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "View Details"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
            }
            Rectangle {
                id: pagination_row

                x: 24
                y: 379

                height: 24
                width: 1118

                color: "transparent"

                Text {
                    id: showing_count

                    y: 3.50

                    height: 17
                    width: 203

                    color: "#5a6266"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 13
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Showing 1-3 of 1,482 transactions"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Rectangle {
                    id: page_indicators

                    x: 956

                    height: 24
                    width: 162

                    color: "transparent"

                    Rectangle {
                        id: prev

                        height: 24
                        width: 40

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: prev_1

                            x: 8
                            y: 4

                            height: 16
                            width: 25

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Prev"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: num_1

                        x: 48

                        height: 24
                        width: 28

                        color: "#7b5c40"
                        radius: 2

                        Text {
                            id: element

                            x: 10
                            y: 4

                            height: 16
                            width: 9

                            color: "#ffffff"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "1"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: num_2

                        x: 84

                        height: 24
                        width: 28

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: element_1

                            x: 10
                            y: 4

                            height: 16
                            width: 9

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "2"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: next

                        x: 120

                        height: 24
                        width: 42

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: next_1

                            x: 8
                            y: 4

                            height: 16
                            width: 27

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Next"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
            }
        }
    }
}