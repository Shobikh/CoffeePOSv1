import QtQuick
import QtQuick.Shapes

Rectangle {
    id: brewdesk_dashboard

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"

    Sidebar{
        activePage: "dashboard"
        x: 0
        y: 0
    }

    Rectangle {
        id: main_content

        x: 200

        height: 768
        width: 1166

        color: "transparent"

        Image {
            id: top_header

            source: Qt.resolvedUrl("assets/top_header.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 189

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 94

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Dashboard"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 190

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "BrewDesk Daily Operations Control"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
            Rectangle {
                id: user_profile_badge

                x: 991
                y: 25.50

                height: 24
                width: 151

                color: "transparent"

                Text {
                    id: cashier_label

                    y: 4

                    height: 16
                    width: 78

                    color: "#5a6266"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Cashier Mode:"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Rectangle {
                    id: cashier_pill

                    x: 85

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

            height: 610
            width: 1166

            color: "transparent"

            Rectangle {
                id: stats_row

                x: 24
                y: 24

                height: 87
                width: 1118

                color: "transparent"

                Rectangle {
                    id: stat_tile

                    height: 87
                    width: 362

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label

                        x: 16
                        y: 16

                        height: 16
                        width: 90

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 12
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Today's Sales"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value

                        x: 16
                        y: 40

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
                    id: stat_tile_1

                    x: 378

                    height: 87
                    width: 362

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label_1

                        x: 16
                        y: 16

                        height: 16
                        width: 136

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 12
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Transactions Count"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value_1

                        x: 16
                        y: 40

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
                    id: stat_tile_2

                    x: 756

                    height: 87
                    width: 362

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: stat_label_2

                        x: 16
                        y: 16

                        height: 16
                        width: 182

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 12
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Average Transaction Value"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value_2

                        x: 16
                        y: 40

                        height: 31
                        width: 73

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$8.60"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: mid_row

                x: 24
                y: 131

                height: 240
                width: 1118

                color: "transparent"

                Rectangle {
                    id: low_stock_panel

                    height: 240
                    width: 551

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: panel_title

                        x: 16
                        y: 16

                        height: 18
                        width: 105

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "Low Stock Alert"
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

                        Rectangle {
                            id: table_headers

                            height: 22
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Rectangle {
                                id: header_cell

                                height: 14
                                width: 259

                                color: "transparent"

                                Text {
                                    id: header_label

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
                                id: header_cell_1

                                x: 259

                                height: 14
                                width: 80

                                color: "transparent"

                                Text {
                                    id: header_label_1

                                    height: 14
                                    width: 53

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Current"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: header_cell_2

                                x: 339

                                height: 14
                                width: 80

                                color: "transparent"

                                Text {
                                    id: header_label_2

                                    height: 14
                                    width: 57

                                    color: "#5a6266"
                                    font.capitalization: Font.AllUppercase
                                    font.family: "IBM Plex Sans"
                                    font.letterSpacing: 0.06
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Min Limit"
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
                        }
                        Rectangle {
                            id: table_row

                            y: 22

                            height: 33
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Text {
                                id: item_name

                                y: 8

                                height: 17
                                width: 260

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Oat Milk 1L"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: item_curr

                                x: 259
                                y: 8

                                height: 17
                                width: 81

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "3"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: item_min

                                x: 339
                                y: 8

                                height: 17
                                width: 81

                                color: "#5a6266"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "10"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Rectangle {
                                id: frame

                                x: 419
                                y: 8

                                height: 17
                                width: 100

                                color: "transparent"

                                Rectangle {
                                    id: status_badge

                                    height: 17
                                    width: 72

                                    color: "#fef5e7"
                                    radius: 2

                                    Text {
                                        id: badge_text

                                        x: 8
                                        y: 2

                                        height: 13
                                        width: 57

                                        color: "#b17a32"
                                        font.capitalization: Font.AllUppercase
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 10
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "LOW STOCK"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: table_row_1

                            y: 55

                            height: 33
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Text {
                                id: item_name_1

                                y: 8

                                height: 17
                                width: 260

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Espresso Roast Beans (Dark)"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: item_curr_1

                                x: 259
                                y: 8

                                height: 17
                                width: 81

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "2"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: item_min_1

                                x: 339
                                y: 8

                                height: 17
                                width: 81

                                color: "#5a6266"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "15"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Rectangle {
                                id: frame_1

                                x: 419
                                y: 8

                                height: 17
                                width: 100

                                color: "transparent"

                                Rectangle {
                                    id: status_badge_1

                                    height: 17
                                    width: 72

                                    color: "#fef5e7"
                                    radius: 2

                                    Text {
                                        id: badge_text_1

                                        x: 8
                                        y: 2

                                        height: 13
                                        width: 57

                                        color: "#b17a32"
                                        font.capitalization: Font.AllUppercase
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 10
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "LOW STOCK"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: table_row_2

                            y: 88

                            height: 33
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Text {
                                id: item_name_2

                                y: 8

                                height: 17
                                width: 260

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "Caramel Syrup Bottle"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: item_curr_2

                                x: 259
                                y: 8

                                height: 17
                                width: 81

                                color: "#1a1d20"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "0"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Text {
                                id: item_min_2

                                x: 339
                                y: 8

                                height: 17
                                width: 81

                                color: "#5a6266"
                                font.family: "IBM Plex Mono"
                                font.pixelSize: 13
                                font.weight: Font.Normal
                                horizontalAlignment: Text.AlignLeft
                                text: "5"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                                wrapMode: Text.Wrap
                            }
                            Rectangle {
                                id: frame_2

                                x: 419
                                y: 8

                                height: 17
                                width: 100

                                color: "transparent"

                                Rectangle {
                                    id: status_badge_2

                                    height: 17
                                    width: 86

                                    color: "#fceaea"
                                    radius: 2

                                    Text {
                                        id: badge_text_2

                                        x: 8
                                        y: 2

                                        height: 13
                                        width: 71

                                        color: "#a53f3f"
                                        font.capitalization: Font.AllUppercase
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 10
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "OUT OF STOCK"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: best_sellers_panel

                    x: 567

                    height: 240
                    width: 551

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "#ffffff"

                    Text {
                        id: panel_title_1

                        x: 16
                        y: 16

                        height: 18
                        width: 132

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 14
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "Best Sellers (Today)"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Rectangle {
                        id: _list

                        x: 16
                        y: 46

                        height: 132
                        width: 519

                        color: "transparent"

                        Rectangle {
                            id: list_row

                            height: 33
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Rectangle {
                                id: frame_3

                                y: 8

                                height: 17
                                width: 152

                                color: "transparent"

                                Text {
                                    id: rank

                                    height: 17
                                    width: 17

                                    color: "#7b5c40"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.Bold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "1."
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: prod_name

                                    x: 24

                                    height: 17
                                    width: 129

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Espresso Double Shot"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: frame_4

                                x: 400
                                y: 8

                                height: 17
                                width: 119

                                color: "transparent"

                                Text {
                                    id: qty_sold

                                    y: 0.50

                                    height: 16
                                    width: 49

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 12
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "142 sold"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: rev_value

                                    x: 64

                                    height: 17
                                    width: 56

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "$497.00"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Rectangle {
                            id: list_row_1

                            y: 33

                            height: 33
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Rectangle {
                                id: frame_5

                                y: 8

                                height: 17
                                width: 107

                                color: "transparent"

                                Text {
                                    id: rank_1

                                    height: 17
                                    width: 17

                                    color: "#7b5c40"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.Bold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "2."
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: prod_name_1

                                    x: 24

                                    height: 17
                                    width: 84

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Iced Oat Latte"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: frame_6

                                x: 407
                                y: 8

                                height: 17
                                width: 112

                                color: "transparent"

                                Text {
                                    id: qty_sold_1

                                    y: 0.50

                                    height: 16
                                    width: 42

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 12
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "98 sold"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: rev_value_1

                                    x: 57

                                    height: 17
                                    width: 56

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "$539.00"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Rectangle {
                            id: list_row_2

                            y: 66

                            height: 33
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Rectangle {
                                id: frame_7

                                y: 8

                                height: 17
                                width: 128

                                color: "transparent"

                                Text {
                                    id: rank_2

                                    height: 17
                                    width: 17

                                    color: "#7b5c40"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.Bold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "3."
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: prod_name_2

                                    x: 24

                                    height: 17
                                    width: 105

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Croissant (Butter)"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: frame_8

                                x: 407
                                y: 8

                                height: 17
                                width: 112

                                color: "transparent"

                                Text {
                                    id: qty_sold_2

                                    y: 0.50

                                    height: 16
                                    width: 42

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 12
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "64 sold"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: rev_value_2

                                    x: 57

                                    height: 17
                                    width: 56

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "$288.00"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Rectangle {
                            id: list_row_3

                            y: 99

                            height: 33
                            width: 519

                            border.color: "#dee2e6"
                            border.width: 1
                            color: "transparent"

                            Rectangle {
                                id: frame_9

                                y: 8

                                height: 17
                                width: 130

                                color: "transparent"

                                Text {
                                    id: rank_3

                                    height: 17
                                    width: 17

                                    color: "#7b5c40"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.Bold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "4."
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: prod_name_3

                                    x: 24

                                    height: 17
                                    width: 107

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Cold Brew Special"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                            Rectangle {
                                id: frame_10

                                x: 407
                                y: 8

                                height: 17
                                width: 112

                                color: "transparent"

                                Text {
                                    id: qty_sold_3

                                    y: 0.50

                                    height: 16
                                    width: 42

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 12
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "45 sold"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Text {
                                    id: rev_value_3

                                    x: 57

                                    height: 17
                                    width: 56

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Mono"
                                    font.pixelSize: 13
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "$247.50"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                    }
                }
            }
            Rectangle {
                id: recent_tx_panel

                x: 24
                y: 391

                height: 195
                width: 1118

                border.color: "#dee2e6"
                border.width: 1
                color: "#ffffff"

                Text {
                    id: panel_title_2

                    x: 16
                    y: 16

                    height: 18
                    width: 135

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 14
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Recent Transactions"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Rectangle {
                    id: tx_table

                    x: 16
                    y: 46

                    height: 133
                    width: 1086

                    color: "transparent"

                    Rectangle {
                        id: tx_headers

                        height: 22
                        width: 1086

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "transparent"

                        Rectangle {
                            id: header_cell_4

                            height: 14
                            width: 140

                            color: "transparent"

                            Text {
                                id: header_label_4

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
                            id: header_cell_5

                            x: 140

                            height: 14
                            width: 120

                            color: "transparent"

                            Text {
                                id: header_label_5

                                height: 14
                                width: 29

                                color: "#5a6266"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.letterSpacing: 0.06
                                font.pixelSize: 11
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Time"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                        Rectangle {
                            id: header_cell_6

                            x: 260

                            height: 14
                            width: 160

                            color: "transparent"

                            Text {
                                id: header_label_6

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
                            id: header_cell_7

                            x: 420

                            height: 14
                            width: 140

                            color: "transparent"

                            Text {
                                id: header_label_7

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
                            id: header_cell_8

                            x: 560

                            height: 14
                            width: 120

                            color: "transparent"

                            Text {
                                id: header_label_8

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
                            id: header_cell_9

                            x: 680

                            height: 14
                            width: 406

                            color: "transparent"

                            Text {
                                id: header_label_9

                                x: 373

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
                    }
                    Rectangle {
                        id: tx_row

                        y: 22

                        height: 37
                        width: 1086

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "transparent"

                        Text {
                            id: tx_id

                            y: 10

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

                            x: 140
                            y: 10

                            height: 17
                            width: 121

                            color: "#5a6266"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "11:24 AM"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                        Text {
                            id: tx_cashier

                            x: 260
                            y: 10

                            height: 17
                            width: 161

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
                            id: tx_method

                            x: 420
                            y: 10

                            height: 17
                            width: 141

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
                            id: frame_11

                            x: 560
                            y: 10

                            height: 17
                            width: 120

                            color: "transparent"

                            Rectangle {
                                id: status_badge_3

                                height: 17
                                width: 74

                                color: "#eaf7ee"
                                radius: 2

                                Text {
                                    id: badge_text_3

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
                                    text: "completed"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Text {
                            id: tx_total

                            x: 680
                            y: 10

                            height: 17
                            width: 407

                            color: "#1a1d20"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Bold
                            horizontalAlignment: Text.AlignRight
                            text: "$12.50"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                    }
                    Rectangle {
                        id: tx_row_1

                        y: 59

                        height: 37
                        width: 1086

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "transparent"

                        Text {
                            id: tx_id_1

                            y: 10

                            height: 17
                            width: 141

                            color: "#1a1d20"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "TX-1091"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                        Text {
                            id: tx_time_1

                            x: 140
                            y: 10

                            height: 17
                            width: 121

                            color: "#5a6266"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "11:18 AM"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                        Text {
                            id: tx_cashier_1

                            x: 260
                            y: 10

                            height: 17
                            width: 161

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
                            id: tx_method_1

                            x: 420
                            y: 10

                            height: 17
                            width: 141

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
                            id: frame_12

                            x: 560
                            y: 10

                            height: 17
                            width: 120

                            color: "transparent"

                            Rectangle {
                                id: status_badge_4

                                height: 17
                                width: 74

                                color: "#eaf7ee"
                                radius: 2

                                Text {
                                    id: badge_text_4

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
                                    text: "completed"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Text {
                            id: tx_total_1

                            x: 680
                            y: 10

                            height: 17
                            width: 407

                            color: "#1a1d20"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Bold
                            horizontalAlignment: Text.AlignRight
                            text: "$6.80"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                    }
                    Rectangle {
                        id: tx_row_2

                        y: 96

                        height: 37
                        width: 1086

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "transparent"

                        Text {
                            id: tx_id_2

                            y: 10

                            height: 17
                            width: 141

                            color: "#1a1d20"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "TX-1090"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                        Text {
                            id: tx_time_2

                            x: 140
                            y: 10

                            height: 17
                            width: 121

                            color: "#5a6266"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "11:05 AM"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                        Text {
                            id: tx_cashier_2

                            x: 260
                            y: 10

                            height: 17
                            width: 161

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
                            id: tx_method_2

                            x: 420
                            y: 10

                            height: 17
                            width: 141

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
                            id: frame_13

                            x: 560
                            y: 10

                            height: 17
                            width: 120

                            color: "transparent"

                            Rectangle {
                                id: status_badge_5

                                height: 17
                                width: 74

                                color: "#eaf7ee"
                                radius: 2

                                Text {
                                    id: badge_text_5

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
                                    text: "completed"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Text {
                            id: tx_total_2

                            x: 680
                            y: 10

                            height: 17
                            width: 407

                            color: "#1a1d20"
                            font.family: "IBM Plex Mono"
                            font.pixelSize: 13
                            font.weight: Font.Bold
                            horizontalAlignment: Text.AlignRight
                            text: "$18.20"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                            wrapMode: Text.Wrap
                        }
                    }
                }
            }
        }
    }
}