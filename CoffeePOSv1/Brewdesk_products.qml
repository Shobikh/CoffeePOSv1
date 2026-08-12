import QtQuick
import QtQuick.Shapes

Rectangle {
    id: brewdesk_products

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"

    Sidebar{
        activePage: "products"
        x: 0
        y: 0
    }

    Rectangle {
        id: products_pane

        x: 200

        height: 768
        width: 1166

        color: "transparent"

        Image {
            id: top_header

            source: Qt.resolvedUrl("assets/top_header_2.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 250

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 251

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Product Catalog Management"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 210

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Create, edit and publish store offerings"
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

            height: 403
            width: 1166

            color: "transparent"

            Rectangle {
                id: toolbar

                x: 24
                y: 24

                height: 32
                width: 1118

                color: "transparent"

                Rectangle {
                    id: search_filters

                    height: 32
                    width: 383

                    color: "transparent"

                    Rectangle {
                        id: search_box

                        height: 32
                        width: 260

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
                            width: 155

                            color: "#8e9599"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Search product name, SKU..."
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: category_dropdown

                        x: 272

                        height: 32
                        width: 111

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: dropdown_text

                            x: 12
                            y: 8

                            height: 16
                            width: 70

                            color: "#5a6266"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Category: All"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: chevron_down

                            x: 89
                            y: 11

                            height: 10
                            width: 10

                            clip: true
                            color: "transparent"

                            Shape {
                                id: _vector_10

                                x: 2.50
                                y: 3.75

                                height: 2.50
                                width: 5

                                ShapePath {
                                    id: _vector_10_ShapePath0

                                    fillColor: "#00000000"
                                    strokeColor: "#5a6266"
                                    strokeWidth: 2

                                    PathSvg {
                                        id: _vector_10_ShapePath0_PathSvg0

                                        path: "M 0 0 L 2.5 2.5 L 5 0"
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: add_product_btn

                    x: 995

                    height: 32
                    width: 123

                    color: "#7b5c40"
                    radius: 2

                    Rectangle {
                        id: plus

                        x: 16
                        y: 10

                        height: 12
                        width: 12

                        clip: true
                        color: "transparent"

                        Shape {
                            id: _vector_11

                            x: 2.50
                            y: 2.50

                            height: 7
                            width: 7

                            ShapePath {
                                id: _vector_11_ShapePath0

                                fillColor: "#00000000"
                                strokeColor: "#ffffff"
                                strokeWidth: 2

                                PathSvg {
                                    id: _vector_11_ShapePath0_PathSvg0

                                    path: "M 0 3.500400066375732 L 7.000800132751464 3.500400066375732 M 3.500400066375732 0 L 3.500400066375732 7.000800132751464"
                                }
                            }
                        }
                    }
                    Text {
                        id: btn_label

                        x: 36
                        y: 8

                        height: 16
                        width: 72

                        color: "#ffffff"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "Add Product"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: product_table_card

                x: 24
                y: 72

                height: 267
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
                        width: 160

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

                        x: 454
                        y: 14

                        height: 14
                        width: 140

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

                        x: 594
                        y: 14

                        height: 14
                        width: 110

                        color: "transparent"

                        Text {
                            id: header_label_3

                            height: 14
                            width: 83

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Selling Price"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_4

                        x: 704
                        y: 14

                        height: 14
                        width: 110

                        color: "transparent"

                        Text {
                            id: header_label_4

                            height: 14
                            width: 65

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Cost Price"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_5

                        x: 814
                        y: 14

                        height: 14
                        width: 110

                        color: "transparent"

                        Text {
                            id: header_label_5

                            height: 14
                            width: 37

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Stock"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_6

                        x: 924
                        y: 14

                        height: 14
                        width: 110

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

                        x: 1034
                        y: 14

                        height: 14
                        width: 70

                        color: "transparent"

                        Text {
                            id: header_label_7

                            x: 22

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
                        id: name

                        x: 14
                        y: 14

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Espresso Single Shot"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku

                        x: 294
                        y: 14.50

                        height: 16
                        width: 161

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

                        x: 454
                        y: 14

                        height: 17
                        width: 141

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
                        id: selling_price

                        x: 594
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$2.50"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: cost_price

                        x: 704
                        y: 14

                        height: 17
                        width: 111

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$0.40"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: stock

                        x: 814
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "124"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame

                        x: 924
                        y: 14

                        height: 17
                        width: 110

                        color: "transparent"

                        Rectangle {
                            id: status_badge

                            height: 17
                            width: 52

                            color: "#eaf7ee"
                            radius: 2

                            Text {
                                id: badge_text

                                x: 8
                                y: 2

                                height: 13
                                width: 37

                                color: "#2b7a4b"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "active"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions

                        x: 1034
                        y: 14.50

                        height: 16
                        width: 70

                        color: "transparent"

                        Text {
                            id: act_edit

                            x: -6

                            height: 16
                            width: 24

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Edit"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Text {
                            id: act_del

                            x: 33

                            height: 16
                            width: 38

                            color: "#a53f3f"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Delete"
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
                        id: name_1

                        x: 14
                        y: 14

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Iced Oat Latte"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku_1

                        x: 294
                        y: 14.50

                        height: 16
                        width: 161

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

                        x: 454
                        y: 14

                        height: 17
                        width: 141

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
                        id: selling_price_1

                        x: 594
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$5.50"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: cost_price_1

                        x: 704
                        y: 14

                        height: 17
                        width: 111

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$1.10"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: stock_1

                        x: 814
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "84"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame_1

                        x: 924
                        y: 14

                        height: 17
                        width: 110

                        color: "transparent"

                        Rectangle {
                            id: status_badge_1

                            height: 17
                            width: 52

                            color: "#eaf7ee"
                            radius: 2

                            Text {
                                id: badge_text_1

                                x: 8
                                y: 2

                                height: 13
                                width: 37

                                color: "#2b7a4b"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "active"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions_1

                        x: 1034
                        y: 14.50

                        height: 16
                        width: 70

                        color: "transparent"

                        Text {
                            id: act_edit_1

                            x: -6

                            height: 16
                            width: 24

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Edit"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Text {
                            id: act_del_1

                            x: 33

                            height: 16
                            width: 38

                            color: "#a53f3f"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Delete"
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
                        id: name_2

                        x: 14
                        y: 14

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "English Breakfast Tea"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku_2

                        x: 294
                        y: 14.50

                        height: 16
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "SKU-TE-012"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: category_2

                        x: 454
                        y: 14

                        height: 17
                        width: 141

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
                        id: selling_price_2

                        x: 594
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$3.00"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: cost_price_2

                        x: 704
                        y: 14

                        height: 17
                        width: 111

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$0.30"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: stock_2

                        x: 814
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
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
                        id: frame_2

                        x: 924
                        y: 14

                        height: 17
                        width: 110

                        color: "transparent"

                        Rectangle {
                            id: status_badge_2

                            height: 17
                            width: 52

                            color: "#eaf7ee"
                            radius: 2

                            Text {
                                id: badge_text_2

                                x: 8
                                y: 2

                                height: 13
                                width: 37

                                color: "#2b7a4b"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "active"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions_2

                        x: 1034
                        y: 14.50

                        height: 16
                        width: 70

                        color: "transparent"

                        Text {
                            id: act_edit_2

                            x: -6

                            height: 16
                            width: 24

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Edit"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Text {
                            id: act_del_2

                            x: 33

                            height: 16
                            width: 38

                            color: "#a53f3f"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Delete"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: row_item_3

                    y: 177

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: name_3

                        x: 14
                        y: 14

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
                        id: sku_3

                        x: 294
                        y: 14.50

                        height: 16
                        width: 161

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
                        id: category_3

                        x: 454
                        y: 14

                        height: 17
                        width: 141

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
                        id: selling_price_3

                        x: 594
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$4.50"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: cost_price_3

                        x: 704
                        y: 14

                        height: 17
                        width: 111

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$1.20"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: stock_3

                        x: 814
                        y: 14

                        height: 17
                        width: 111

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
                    Rectangle {
                        id: frame_3

                        x: 924
                        y: 14

                        height: 17
                        width: 110

                        color: "transparent"

                        Rectangle {
                            id: status_badge_3

                            height: 17
                            width: 52

                            color: "#eaf7ee"
                            radius: 2

                            Text {
                                id: badge_text_3

                                x: 8
                                y: 2

                                height: 13
                                width: 37

                                color: "#2b7a4b"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "active"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions_3

                        x: 1034
                        y: 14.50

                        height: 16
                        width: 70

                        color: "transparent"

                        Text {
                            id: act_edit_3

                            x: -6

                            height: 16
                            width: 24

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Edit"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Text {
                            id: act_del_3

                            x: 33

                            height: 16
                            width: 38

                            color: "#a53f3f"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Delete"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: row_item_4

                    y: 222

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: name_4

                        x: 14
                        y: 14

                        height: 17
                        width: 281

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Matcha Latte"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: sku_4

                        x: 294
                        y: 14.50

                        height: 16
                        width: 161

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
                        id: category_4

                        x: 454
                        y: 14

                        height: 17
                        width: 141

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
                        id: selling_price_4

                        x: 594
                        y: 14

                        height: 17
                        width: 111

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$4.80"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: cost_price_4

                        x: 704
                        y: 14

                        height: 17
                        width: 111

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "$0.95"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: stock_4

                        x: 814
                        y: 14

                        height: 17
                        width: 111

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
                    Rectangle {
                        id: frame_4

                        x: 924
                        y: 14

                        height: 17
                        width: 110

                        color: "transparent"

                        Rectangle {
                            id: status_badge_4

                            height: 17
                            width: 63

                            color: "#dee2e6"
                            radius: 2

                            Text {
                                id: badge_text_4

                                x: 8
                                y: 2

                                height: 13
                                width: 48

                                color: "#5a6266"
                                font.capitalization: Font.AllUppercase
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 10
                                font.weight: Font.DemiBold
                                horizontalAlignment: Text.AlignLeft
                                text: "inactive"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions_4

                        x: 1034
                        y: 14.50

                        height: 16
                        width: 70

                        color: "transparent"

                        Text {
                            id: act_edit_4

                            x: -6

                            height: 16
                            width: 24

                            color: "#7b5c40"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Edit"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Text {
                            id: act_del_4

                            x: 33

                            height: 16
                            width: 38

                            color: "#a53f3f"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Delete"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
            }
            Rectangle {
                id: pagination_row

                x: 24
                y: 355

                height: 24
                width: 1118

                color: "transparent"

                Text {
                    id: showing_count

                    y: 4

                    height: 16
                    width: 151

                    color: "#5a6266"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Showing 1-5 of 42 products"
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

                            color: "#000000"
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

                            color: "#000000"
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

                            color: "#000000"
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