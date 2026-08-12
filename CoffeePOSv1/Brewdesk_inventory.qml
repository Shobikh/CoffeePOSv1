import QtQuick
import QtQuick.Shapes

Rectangle {
    id: brewdesk_inventory

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"

    Sidebar{
        activePage: "inventory"
        x: 0
        y: 0
    }

    Rectangle {
        id: inventory_pane

        x: 200

        height: 768
        width: 1166

        color: "transparent"

        Image {
            id: top_header

            source: Qt.resolvedUrl("assets/top_header_3.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 240

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 241

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Real-time Inventory Monitor"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 219

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Stock valuation, stock adjustment tracks"
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
            id: page_content

            y: 75

            height: 449
            width: 1166

            color: "transparent"

            Rectangle {
                id: summary_tiles_row

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
                        width: 134

                        color: "#5a6266"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.letterSpacing: 0.06
                        font.pixelSize: 12
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Total Tracked Items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: stat_value

                        x: 16
                        y: 40

                        height: 31
                        width: 137

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "48 Products"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: warning_stat

                    x: 378

                    height: 87
                    width: 362

                    border.color: "#b17a32"
                    border.width: 1
                    color: "#fef5e7"

                    Text {
                        id: low_Stock_Warnings

                        x: 16
                        y: 16

                        height: 16
                        width: 136

                        color: "#b17a32"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Low Stock Warnings"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: alerting

                        x: 16
                        y: 40

                        height: 31
                        width: 145

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "2 Alerting"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: danger_stat

                    x: 756

                    height: 87
                    width: 362

                    border.color: "#a53f3f"
                    border.width: 1
                    color: "#fceaea"

                    Text {
                        id: out_of_Stock

                        x: 16
                        y: 16

                        height: 16
                        width: 85

                        color: "#a53f3f"
                        font.capitalization: Font.AllUppercase
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Out of Stock"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                    Text {
                        id: urgently_Empty

                        x: 16
                        y: 40

                        height: 31
                        width: 232

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 24
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "1 Urgently Empty"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: filter_bar

                x: 24
                y: 131

                height: 32
                width: 1118

                color: "transparent"

                Rectangle {
                    id: filters_group

                    height: 32
                    width: 474

                    color: "transparent"

                    Rectangle {
                        id: search_field

                        height: 32
                        width: 220

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Rectangle {
                            id: search

                            x: 12
                            y: 9

                            height: 14
                            width: 14

                            clip: true
                            color: "transparent"

                            Shape {
                                id: _vector_9

                                x: 1.75
                                y: 1.75

                                height: 10.50
                                width: 10.50

                                ShapePath {
                                    id: _vector_9_ShapePath0

                                    fillColor: "#00000000"
                                    strokeColor: "#5a6266"
                                    strokeWidth: 2

                                    PathSvg {
                                        id: _vector_9_ShapePath0_PathSvg0

                                        path: "M 10.500091552734375 10.500091552734375 L 7.96842472041161 7.96842472041161 M 9.333333615901045 4.666666807950523 C 9.333333615901045 7.2439955679252375 7.2439955679252375 9.333333615901045 4.666666807950523 9.333333615901045 C 2.0893377698207902 9.333333615901045 0 7.2439955679252375 0 4.666666807950523 C 0 2.0893377698207902 2.0893377698207902 0 4.666666807950523 0 C 7.2439955679252375 0 9.333333615901045 2.0893377698207902 9.333333615901045 4.666666807950523 Z"
                                    }
                                }
                            }
                        }
                        Text {
                            id: placeholder

                            x: 34
                            y: 8

                            height: 16
                            width: 101

                            color: "#8e9599"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Search inventory..."
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: status_filter

                        x: 232

                        height: 32
                        width: 116

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: filter_text

                            x: 12
                            y: 8

                            height: 16
                            width: 93

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Status: All Levels"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: cat_filter

                        x: 360

                        height: 32
                        width: 114

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: filter_text_1

                            x: 12
                            y: 8

                            height: 16
                            width: 91

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Category: Coffee"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
            }
            Rectangle {
                id: inventory_table_container

                x: 24
                y: 183

                height: 242
                width: 1118

                border.color: "#dee2e6"
                border.width: 1
                color: "#ffffff"

                Rectangle {
                    id: table_headers

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
                        width: 280

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

                        x: 294
                        y: 14

                        height: 14
                        width: 140

                        color: "transparent"

                        Text {
                            id: header_label_1

                            height: 14
                            width: 24

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "SKU"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_2

                        x: 434
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_2

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
                        id: header_cell_3

                        x: 554
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_3

                            height: 14
                            width: 90

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Current Stock"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_4

                        x: 674
                        y: 14

                        height: 14
                        width: 100

                        color: "transparent"

                        Text {
                            id: header_label_4

                            height: 14
                            width: 29

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Unit"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_5

                        x: 774
                        y: 14

                        height: 14
                        width: 110

                        color: "transparent"

                        Text {
                            id: header_label_5

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
                        id: header_cell_6

                        x: 884
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_6

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
                        id: header_cell_7

                        x: 1004
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_7

                            height: 14
                            width: 80

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Last Updated"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_8

                        x: 1124
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_8

                            x: 72

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
                    id: table_row_item

                    y: 42

                    height: 50
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: name

                        x: 14
                        y: 16.50

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Oat Milk 1L"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku

                        x: 294
                        y: 17

                        height: 16
                        width: 141

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "SKU-CF-001"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: category

                        x: 434
                        y: 16.50

                        height: 17
                        width: 121

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
                        id: current

                        x: 554
                        y: 16.50

                        height: 17
                        width: 121

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
                        id: unit

                        x: 674
                        y: 16.50

                        height: 17
                        width: 101

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Boxes"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: min

                        x: 774
                        y: 16.50

                        height: 17
                        width: 111

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

                        x: 884
                        y: 16.50

                        height: 17
                        width: 120

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
                    Text {
                        id: updated

                        x: 1004
                        y: 17

                        height: 16
                        width: 121

                        color: "#8e9599"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "10m ago"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: action_block

                        x: 1124
                        y: 14

                        height: 22
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: adjust_btn

                            x: 35

                            height: 22
                            width: 85

                            border.color: "#7b5c40"
                            border.width: 1
                            color: "transparent"

                            Text {
                                id: adjust_label

                                x: 10
                                y: 4

                                height: 14
                                width: 66

                                color: "#7b5c40"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 11
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Adjust Stock"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                }
                Rectangle {
                    id: table_row_item_1

                    y: 92

                    height: 50
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: name_1

                        x: 14
                        y: 16.50

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Espresso Roast Beans (Dark)"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku_1

                        x: 294
                        y: 17

                        height: 16
                        width: 141

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "SKU-CF-008"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: category_1

                        x: 434
                        y: 16.50

                        height: 17
                        width: 121

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
                        id: current_1

                        x: 554
                        y: 16.50

                        height: 17
                        width: 121

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
                        id: unit_1

                        x: 674
                        y: 16.50

                        height: 17
                        width: 101

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Kg"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: min_1

                        x: 774
                        y: 16.50

                        height: 17
                        width: 111

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

                        x: 884
                        y: 16.50

                        height: 17
                        width: 120

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
                    Text {
                        id: updated_1

                        x: 1004
                        y: 17

                        height: 16
                        width: 121

                        color: "#8e9599"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "1h ago"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: action_block_1

                        x: 1124
                        y: 14

                        height: 22
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: adjust_btn_1

                            x: 35

                            height: 22
                            width: 85

                            border.color: "#7b5c40"
                            border.width: 1
                            color: "transparent"

                            Text {
                                id: adjust_label_1

                                x: 10
                                y: 4

                                height: 14
                                width: 66

                                color: "#7b5c40"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 11
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Adjust Stock"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                }
                Rectangle {
                    id: table_row_item_2

                    y: 142

                    height: 50
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: name_2

                        x: 14
                        y: 16.50

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Butter Croissant"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku_2

                        x: 294
                        y: 17

                        height: 16
                        width: 141

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "SKU-PA-051"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: category_2

                        x: 434
                        y: 16.50

                        height: 17
                        width: 121

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
                        id: current_2

                        x: 554
                        y: 16.50

                        height: 17
                        width: 121

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "12"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: unit_2

                        x: 674
                        y: 16.50

                        height: 17
                        width: 101

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Pcs"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: min_2

                        x: 774
                        y: 16.50

                        height: 17
                        width: 111

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

                        x: 884
                        y: 16.50

                        height: 17
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: status_badge_2

                            height: 17
                            width: 62

                            color: "#eaf7ee"
                            radius: 2

                            Text {
                                id: badge_text_2

                                x: 8
                                y: 2

                                height: 13
                                width: 47

                                color: "#2b7a4b"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "IN STOCK"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Text {
                        id: updated_2

                        x: 1004
                        y: 17

                        height: 16
                        width: 121

                        color: "#8e9599"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "3h ago"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: action_block_2

                        x: 1124
                        y: 14

                        height: 22
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: adjust_btn_2

                            x: 35

                            height: 22
                            width: 85

                            border.color: "#7b5c40"
                            border.width: 1
                            color: "transparent"

                            Text {
                                id: adjust_label_2

                                x: 10
                                y: 4

                                height: 14
                                width: 66

                                color: "#7b5c40"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 11
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Adjust Stock"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                }
                Rectangle {
                    id: table_row_item_3

                    y: 192

                    height: 50
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: name_3

                        x: 14
                        y: 16.50

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Matcha Latte Powder"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku_3

                        x: 294
                        y: 17

                        height: 16
                        width: 141

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "SKU-TE-018"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: category_3

                        x: 434
                        y: 16.50

                        height: 17
                        width: 121

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
                        id: current_3

                        x: 554
                        y: 16.50

                        height: 17
                        width: 121

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
                        id: unit_3

                        x: 674
                        y: 16.50

                        height: 17
                        width: 101

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Kg"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: min_3

                        x: 774
                        y: 16.50

                        height: 17
                        width: 111

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
                        id: frame_3

                        x: 884
                        y: 16.50

                        height: 17
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: status_badge_3

                            height: 17
                            width: 86

                            color: "#fceaea"
                            radius: 2

                            Text {
                                id: badge_text_3

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
                    Text {
                        id: updated_3

                        x: 1004
                        y: 17

                        height: 16
                        width: 121

                        color: "#8e9599"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Yesterday"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: action_block_3

                        x: 1124
                        y: 14

                        height: 22
                        width: 120

                        color: "transparent"

                        Rectangle {
                            id: adjust_btn_3

                            x: 35

                            height: 22
                            width: 85

                            border.color: "#7b5c40"
                            border.width: 1
                            color: "transparent"

                            Text {
                                id: adjust_label_3

                                x: 10
                                y: 4

                                height: 14
                                width: 66

                                color: "#7b5c40"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 11
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "Adjust Stock"
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