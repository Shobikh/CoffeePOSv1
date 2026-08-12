import QtQuick
import QtQuick.Shapes

Rectangle {
    id: suppliers_page

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"

    AdminSidebar{
        activePage: "suppliers"
        x: 0
        y: 0
    }

    Rectangle {
        id: suppliers_pane

        x: 200

        height: 768
        width: 1166

        color: "transparent"

        Image {
            id: top_header

            source: Qt.resolvedUrl("assets/top_header_4.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 279

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 170

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Supplier Directories"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 280

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Procurement logistics and external contact catalogs"
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

            height: 322
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
                    id: search_box

                    height: 32
                    width: 280

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
                        width: 187

                        color: "#8e9599"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Search suppliers, contact people..."
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
                Rectangle {
                    id: add_supplier_btn

                    x: 992

                    height: 32
                    width: 126

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
                            id: _vector_10

                            x: 2.50
                            y: 2.50

                            height: 7
                            width: 7

                            ShapePath {
                                id: _vector_10_ShapePath0

                                fillColor: "#00000000"
                                strokeColor: "#ffffff"
                                strokeWidth: 2

                                PathSvg {
                                    id: _vector_10_ShapePath0_PathSvg0

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
                        width: 75

                        color: "#ffffff"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 12
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "Add Supplier"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: suppliers_table_card

                x: 24
                y: 76

                height: 222
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
                        width: 260

                        color: "transparent"

                        Text {
                            id: header_label

                            height: 14
                            width: 89

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Supplier Name"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_1

                        x: 274
                        y: 14

                        height: 14
                        width: 180

                        color: "transparent"

                        Text {
                            id: header_label_1

                            height: 14
                            width: 97

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Contact Person"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_2

                        x: 454
                        y: 14

                        height: 14
                        width: 160

                        color: "transparent"

                        Text {
                            id: header_label_2

                            height: 14
                            width: 88

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Phone Number"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_3

                        x: 614
                        y: 14

                        height: 14
                        width: 240

                        color: "transparent"

                        Text {
                            id: header_label_3

                            height: 14
                            width: 88

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Email Address"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_4

                        x: 854
                        y: 14

                        height: 14
                        width: 160

                        color: "transparent"

                        Text {
                            id: header_label_4

                            height: 14
                            width: 115

                            color: "#5a6266"
                            font.capitalization: Font.AllUppercase
                            font.family: "IBM Plex Sans"
                            font.letterSpacing: 0.06
                            font.pixelSize: 11
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "Products Supplied"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                    Rectangle {
                        id: header_cell_5

                        x: 1014
                        y: 14

                        height: 14
                        width: 100

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

                        x: 1114
                        y: 14

                        height: 14
                        width: 120

                        color: "transparent"

                        Text {
                            id: header_label_6

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
                    id: supplier_row_item

                    y: 42

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: supplier_name

                        x: 14
                        y: 14

                        height: 17
                        width: 261

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Coffee Growers Co-op"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: contact

                        x: 274
                        y: 14

                        height: 17
                        width: 181

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Marcus Vance"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: phone

                        x: 454
                        y: 14.50

                        height: 16
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "+1 (555) 234-9911"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: email

                        x: 614
                        y: 14

                        height: 17
                        width: 241

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "orders@coffeegrowers.com"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: count

                        x: 854
                        y: 14

                        height: 17
                        width: 161

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "12 line items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame

                        x: 1014
                        y: 14

                        height: 17
                        width: 100

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
                                text: "Active"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions

                        x: 1114
                        y: 14.50

                        height: 16
                        width: 120

                        color: "transparent"

                        Text {
                            id: act_edit

                            x: 53

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
                            id: act_view

                            x: 92

                            height: 16
                            width: 29

                            color: "#2f5f8a"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "View"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: supplier_row_item_1

                    y: 87

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: supplier_name_1

                        x: 14
                        y: 14

                        height: 17
                        width: 261

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Purely Dairy Wholesalers"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: contact_1

                        x: 274
                        y: 14

                        height: 17
                        width: 181

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Sarah Jenkins"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: phone_1

                        x: 454
                        y: 14.50

                        height: 16
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "+1 (555) 887-2300"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: email_1

                        x: 614
                        y: 14

                        height: 17
                        width: 241

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "sarah.j@puredairy.net"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: count_1

                        x: 854
                        y: 14

                        height: 17
                        width: 161

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "4 line items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame_1

                        x: 1014
                        y: 14

                        height: 17
                        width: 100

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
                                text: "Active"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions_1

                        x: 1114
                        y: 14.50

                        height: 16
                        width: 120

                        color: "transparent"

                        Text {
                            id: act_edit_1

                            x: 53

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
                            id: act_view_1

                            x: 92

                            height: 16
                            width: 29

                            color: "#2f5f8a"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "View"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: supplier_row_item_2

                    y: 132

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: supplier_name_2

                        x: 14
                        y: 14

                        height: 17
                        width: 261

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Bakery Craft Deliveries"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: contact_2

                        x: 274
                        y: 14

                        height: 17
                        width: 181

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Alain Dubois"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: phone_2

                        x: 454
                        y: 14.50

                        height: 16
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "+1 (555) 431-7788"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: email_2

                        x: 614
                        y: 14

                        height: 17
                        width: 241

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "alain@bakerycraft.com"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: count_2

                        x: 854
                        y: 14

                        height: 17
                        width: 161

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "8 line items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame_2

                        x: 1014
                        y: 14

                        height: 17
                        width: 100

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
                                text: "Active"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions_2

                        x: 1114
                        y: 14.50

                        height: 16
                        width: 120

                        color: "transparent"

                        Text {
                            id: act_edit_2

                            x: 53

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
                            id: act_view_2

                            x: 92

                            height: 16
                            width: 29

                            color: "#2f5f8a"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "View"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
                Rectangle {
                    id: supplier_row_item_3

                    y: 177

                    height: 45
                    width: 1118

                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text {
                        id: supplier_name_3

                        x: 14
                        y: 14

                        height: 17
                        width: 261

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Syrup & Sweet Supply Ltd"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: contact_3

                        x: 274
                        y: 14

                        height: 17
                        width: 181

                        color: "#1a1d20"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "Dana Miller"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: phone_3

                        x: 454
                        y: 14.50

                        height: 16
                        width: 161

                        color: "#5a6266"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "+1 (555) 991-0421"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: email_3

                        x: 614
                        y: 14

                        height: 17
                        width: 241

                        color: "#5a6266"
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "sales@syrupsweet.org"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: count_3

                        x: 854
                        y: 14

                        height: 17
                        width: 161

                        color: "#1a1d20"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Normal
                        horizontalAlignment: Text.AlignLeft
                        text: "6 line items"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Rectangle {
                        id: frame_3

                        x: 1014
                        y: 14

                        height: 17
                        width: 100

                        color: "transparent"

                        Rectangle {
                            id: status_badge_3

                            height: 17
                            width: 63

                            color: "#dee2e6"
                            radius: 2

                            Text {
                                id: badge_text_3

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
                                text: "Inactive"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                    Rectangle {
                        id: row_actions_3

                        x: 1114
                        y: 14.50

                        height: 16
                        width: 120

                        color: "transparent"

                        Text {
                            id: act_edit_3

                            x: 53

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
                            id: act_view_3

                            x: 92

                            height: 16
                            width: 29

                            color: "#2f5f8a"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.DemiBold
                            horizontalAlignment: Text.AlignLeft
                            text: "View"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                    }
                }
            }
        }
    }
}