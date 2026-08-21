import QtQuick
import QtQuick.Shapes

Rectangle {
    id: settings_page

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"

    AdminSidebar{
        activePage: "settings"
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

            source: Qt.resolvedUrl("assets/top_header_7.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 375

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 71

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Settings"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 376

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "System controls, shop parameters, tax rules, and operator credentials"
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
                id: split_panes_wrapper

                x: 24
                y: 24

                height: 645
                width: 1118

                color: "transparent"

                Rectangle {
                    id: left_column

                    height: 645
                    width: 551

                    color: "transparent"

                    Rectangle {
                        id: setting_group_shop_info

                        height: 174
                        width: 551

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: group_title

                            x: 16
                            y: 16

                            height: 18
                            width: 117

                            color: "#1a1d20"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 14
                            font.weight: Font.Bold
                            horizontalAlignment: Text.AlignLeft
                            text: "Shop Information"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: form_grid

                            x: 16
                            y: 46

                            height: 112
                            width: 519

                            color: "transparent"

                            Rectangle {
                                id: frame

                                height: 51
                                width: 519

                                color: "transparent"

                                Rectangle {
                                    id: input_field

                                    height: 51
                                    width: 253.50

                                    color: "transparent"

                                    Text {
                                        id: shop_Name

                                        height: 14
                                        width: 60

                                        color: "#5a6266"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 11
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Shop Name"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                    Rectangle {
                                        id: frame_1

                                        y: 18

                                        height: 33
                                        width: 253.50

                                        border.color: "#dee2e6"
                                        border.width: 1
                                        color: "#fbfbfb"

                                        Text {
                                            id: brewDesk_Cafe_1

                                            x: 12
                                            y: 8

                                            height: 17
                                            width: 110

                                            color: "#1a1d20"
                                            font.family: "IBM Plex Sans"
                                            font.pixelSize: 13
                                            font.weight: Font.Normal
                                            horizontalAlignment: Text.AlignLeft
                                            text: "BrewDesk Cafe #1"
                                            textFormat: Text.PlainText
                                            verticalAlignment: Text.AlignTop
                                        }
                                    }
                                }
                                Rectangle {
                                    id: input_field_1

                                    x: 265.50

                                    height: 51
                                    width: 253.50

                                    color: "transparent"

                                    Text {
                                        id: phone_Number

                                        height: 14
                                        width: 78

                                        color: "#5a6266"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 11
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Phone Number"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                    Rectangle {
                                        id: frame_2

                                        y: 18

                                        height: 33
                                        width: 253.50

                                        border.color: "#dee2e6"
                                        border.width: 1
                                        color: "#fbfbfb"

                                        Text {
                                            id: element

                                            x: 12
                                            y: 8

                                            height: 17
                                            width: 115

                                            color: "#1a1d20"
                                            font.family: "IBM Plex Sans"
                                            font.pixelSize: 13
                                            font.weight: Font.Normal
                                            horizontalAlignment: Text.AlignLeft
                                            text: "+1 (555) 234-8971"
                                            textFormat: Text.PlainText
                                            verticalAlignment: Text.AlignTop
                                        }
                                    }
                                }
                            }
                            Rectangle {
                                id: input_field_2

                                y: 61

                                height: 51
                                width: 519

                                color: "transparent"

                                Text {
                                    id: store_Address

                                    height: 14
                                    width: 73

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 11
                                    font.weight: Font.DemiBold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Store Address"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                                Rectangle {
                                    id: frame_3

                                    y: 18

                                    height: 33
                                    width: 519

                                    border.color: "#dee2e6"
                                    border.width: 1
                                    color: "#fbfbfb"

                                    Text {
                                        id: oak_Boulevard_Suite_C_Seattle_WA

                                        x: 12
                                        y: 8

                                        height: 17
                                        width: 232

                                        color: "#1a1d20"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 13
                                        font.weight: Font.Normal
                                        horizontalAlignment: Text.AlignLeft
                                        text: "412 Oak Boulevard, Suite C, Seattle WA"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                            }
                        }
                    }
                    Rectangle {
                        id: setting_group_logistics

                        y: 190

                        height: 143
                        width: 551

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: group_title_1

                            x: 16
                            y: 16

                            height: 18
                            width: 171

                            color: "#1a1d20"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 14
                            font.weight: Font.Bold
                            horizontalAlignment: Text.AlignLeft
                            text: "Tax & Receipt Parameters"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: frame_4

                            x: 16
                            y: 46

                            height: 81
                            width: 519

                            color: "transparent"

                            Rectangle {
                                id: tax_pane

                                height: 81
                                width: 253.50

                                color: "transparent"

                                Rectangle {
                                    id: input_field_3

                                    height: 51
                                    width: 253.50

                                    color: "transparent"

                                    Text {
                                        id: standard_VAT_Tax_Rate

                                        height: 14
                                        width: 119

                                        color: "#5a6266"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 11
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Standard VAT/Tax Rate"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                    Rectangle {
                                        id: frame_5

                                        y: 18

                                        height: 33
                                        width: 253.50

                                        border.color: "#dee2e6"
                                        border.width: 1
                                        color: "#fbfbfb"

                                        Text {
                                            id: element_1

                                            x: 12
                                            y: 8

                                            height: 17
                                            width: 40

                                            color: "#1a1d20"
                                            font.family: "IBM Plex Mono"
                                            font.pixelSize: 13
                                            font.weight: Font.Normal
                                            horizontalAlignment: Text.AlignLeft
                                            text: "8.5 %"
                                            textFormat: Text.PlainText
                                            verticalAlignment: Text.AlignTop
                                        }
                                    }
                                }
                                Rectangle {
                                    id: frame_6

                                    y: 59

                                    height: 22
                                    width: 253.50

                                    color: "transparent"

                                    Text {
                                        id: prices_Tax_Inclusive

                                        y: 5

                                        height: 16
                                        width: 108

                                        color: "#5a6266"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 12
                                        font.weight: Font.Normal
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Prices Tax Inclusive"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                    Rectangle {
                                        id: frame_7

                                        x: 219.50
                                        y: 4

                                        height: 18
                                        width: 34

                                        color: "#7b5c40"
                                        radius: 9

                                        Image {
                                            id: ellipse

                                            x: 18
                                            y: 2

                                            source: Qt.resolvedUrl("assets/ellipse.png")
                                        }
                                    }
                                }
                            }
                            Rectangle {
                                id: receipt_pane

                                x: 265.50

                                height: 76
                                width: 253.50

                                color: "transparent"

                                Rectangle {
                                    id: frame_8

                                    height: 18
                                    width: 253.50

                                    color: "transparent"

                                    Text {
                                        id: show_Shop_Logo_on_Receipt

                                        y: 1

                                        height: 16
                                        width: 150

                                        color: "#5a6266"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 12
                                        font.weight: Font.Normal
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Show Shop Logo on Receipt"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                    Rectangle {
                                        id: frame_9

                                        x: 219.50

                                        height: 18
                                        width: 34

                                        color: "#7b5c40"
                                        radius: 9

                                        Image {
                                            id: ellipse_1

                                            x: 18
                                            y: 2

                                            source: Qt.resolvedUrl("assets/ellipse_1.png")
                                        }
                                    }
                                }
                                Rectangle {
                                    id: input_field_4

                                    y: 26

                                    height: 50
                                    width: 253.50

                                    color: "transparent"

                                    Text {
                                        id: footer_Message

                                        height: 14
                                        width: 81

                                        color: "#5a6266"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 11
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Footer Message"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                    Rectangle {
                                        id: frame_10

                                        y: 18

                                        height: 32
                                        width: 253.50

                                        border.color: "#dee2e6"
                                        border.width: 1
                                        color: "#fbfbfb"

                                        Text {
                                            id: thank_you_for_brewing_with_us_

                                            x: 12
                                            y: 8

                                            height: 16
                                            width: 166

                                            color: "#1a1d20"
                                            elide: Text.ElideRight
                                            font.family: "IBM Plex Sans"
                                            font.pixelSize: 12
                                            font.weight: Font.Normal
                                            horizontalAlignment: Text.AlignLeft
                                            text: "Thank you for brewing with us!"
                                            textFormat: Text.PlainText
                                            verticalAlignment: Text.AlignTop
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Rectangle {
                        id: save_changes_bar

                        y: 349

                        height: 57
                        width: 551

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: last_saved_Today_at_09_12_AM

                            x: 12
                            y: 20.50

                            height: 16
                            width: 166

                            color: "#8e9599"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 12
                            font.weight: Font.Normal
                            horizontalAlignment: Text.AlignLeft
                            text: "Last saved: Today at 09:12 AM"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: btn_save

                            x: 393
                            y: 12

                            height: 33
                            width: 146

                            color: "#7b5c40"
                            radius: 2

                            Text {
                                id: sAVE_CHANGES

                                x: 24
                                y: 8

                                height: 17
                                width: 99

                                color: "#ffffff"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 13
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "SAVE CHANGES"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                        }
                    }
                }
                Rectangle {
                    id: right_column

                    x: 567

                    height: 645
                    width: 551

                    color: "transparent"

                    Rectangle {
                        id: setting_group_users

                        height: 187
                        width: 551

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Rectangle {
                            id: frame_11

                            x: 16
                            y: 16

                            height: 22
                            width: 519

                            color: "transparent"

                            Text {
                                id: group_title_2

                                y: 2

                                height: 18
                                width: 96

                                color: "#1a1d20"
                                font.family: "IBM Plex Sans"
                                font.pixelSize: 14
                                font.weight: Font.Bold
                                horizontalAlignment: Text.AlignLeft
                                text: "User Accounts"
                                textFormat: Text.PlainText
                                verticalAlignment: Text.AlignTop
                            }
                            Rectangle {
                                id: add_user_btn

                                x: 446

                                height: 22
                                width: 73

                                border.color: "#7b5c40"
                                border.width: 1
                                color: "transparent"
                                radius: 2

                                Text {
                                    id: add_User

                                    x: 8
                                    y: 4

                                    height: 14
                                    width: 58

                                    color: "#7b5c40"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 11
                                    font.weight: Font.Bold
                                    horizontalAlignment: Text.AlignLeft
                                    text: "+ Add User"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                }
                            }
                        }
                        Rectangle {
                            id: user_table

                            x: 16
                            y: 50

                            height: 121
                            width: 519

                            color: "transparent"

                            Image {
                                id: table_headers

                                source: Qt.resolvedUrl("assets/table_headers_2.png")

                                Rectangle {
                                    id: header_cell

                                    height: 14
                                    width: 110

                                    color: "transparent"

                                    Text {
                                        id: header_label

                                        height: 14
                                        width: 33

                                        color: "#5a6266"
                                        font.capitalization: Font.AllUppercase
                                        font.family: "IBM Plex Sans"
                                        font.letterSpacing: 0.06
                                        font.pixelSize: 11
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Name"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                                Rectangle {
                                    id: header_cell_1

                                    x: 110

                                    height: 14
                                    width: 90

                                    color: "transparent"

                                    Text {
                                        id: header_label_1

                                        height: 14
                                        width: 30

                                        color: "#5a6266"
                                        font.capitalization: Font.AllUppercase
                                        font.family: "IBM Plex Sans"
                                        font.letterSpacing: 0.06
                                        font.pixelSize: 11
                                        font.weight: Font.DemiBold
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Role"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                                Rectangle {
                                    id: header_cell_2

                                    x: 200

                                    height: 14
                                    width: 100

                                    color: "transparent"

                                    Text {
                                        id: header_label_2

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
                                    id: header_cell_3

                                    x: 300

                                    height: 14
                                    width: 219

                                    color: "transparent"

                                    Text {
                                        id: header_label_3

                                        x: 171

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
                            Image {
                                id: table_row

                                y: 22

                                source: Qt.resolvedUrl("assets/table_row_6.png")

                                Text {
                                    id: elena_R_

                                    y: 8

                                    height: 17
                                    width: 111

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
                                    id: cashier

                                    x: 110
                                    y: 8

                                    height: 17
                                    width: 91

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Cashier"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                }
                                Rectangle {
                                    id: frame_12

                                    x: 200
                                    y: 8

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
                                            text: "active"
                                            textFormat: Text.PlainText
                                            verticalAlignment: Text.AlignTop
                                        }
                                    }
                                }
                                Rectangle {
                                    id: row_actions

                                    x: 300
                                    y: 8.50

                                    height: 16
                                    width: 219

                                    color: "transparent"

                                    Text {
                                        id: edit

                                        x: 196

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
                                }
                            }
                            Image {
                                id: table_row_1

                                y: 55

                                source: Qt.resolvedUrl("assets/table_row_7.png")

                                Text {
                                    id: marcus_K_

                                    y: 8

                                    height: 17
                                    width: 111

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
                                    id: manager

                                    x: 110
                                    y: 8

                                    height: 17
                                    width: 91

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Manager"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                }
                                Rectangle {
                                    id: frame_13

                                    x: 200
                                    y: 8

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
                                            text: "active"
                                            textFormat: Text.PlainText
                                            verticalAlignment: Text.AlignTop
                                        }
                                    }
                                }
                                Rectangle {
                                    id: row_actions_1

                                    x: 300
                                    y: 8.50

                                    height: 16
                                    width: 219

                                    color: "transparent"

                                    Text {
                                        id: edit_1

                                        x: 196

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
                                }
                            }
                            Image {
                                id: table_row_2

                                y: 88

                                source: Qt.resolvedUrl("assets/table_row_8.png")

                                Text {
                                    id: sarah_W_

                                    y: 8

                                    height: 17
                                    width: 111

                                    color: "#1a1d20"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Sarah W."
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                }
                                Text {
                                    id: cashier_1

                                    x: 110
                                    y: 8

                                    height: 17
                                    width: 91

                                    color: "#5a6266"
                                    font.family: "IBM Plex Sans"
                                    font.pixelSize: 13
                                    font.weight: Font.Normal
                                    horizontalAlignment: Text.AlignLeft
                                    text: "Cashier"
                                    textFormat: Text.PlainText
                                    verticalAlignment: Text.AlignTop
                                    wrapMode: Text.Wrap
                                }
                                Rectangle {
                                    id: frame_14

                                    x: 200
                                    y: 8

                                    height: 17
                                    width: 100

                                    color: "transparent"

                                    Rectangle {
                                        id: status_badge_2

                                        height: 17
                                        width: 63

                                        color: "#dee2e6"
                                        radius: 2

                                        Text {
                                            id: badge_text_2

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
                                    id: row_actions_2

                                    x: 300
                                    y: 8.50

                                    height: 16
                                    width: 219

                                    color: "transparent"

                                    Text {
                                        id: edit_2

                                        x: 196

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
                                }
                            }
                        }
                    }
                    Rectangle {
                        id: setting_group_payment

                        y: 203

                        height: 144
                        width: 551

                        border.color: "#dee2e6"
                        border.width: 1
                        color: "#ffffff"

                        Text {
                            id: group_title_3

                            x: 16
                            y: 16

                            height: 18
                            width: 189

                            color: "#1a1d20"
                            font.family: "IBM Plex Sans"
                            font.pixelSize: 14
                            font.weight: Font.Bold
                            horizontalAlignment: Text.AlignLeft
                            text: "Payment Terminal Gateways"
                            textFormat: Text.PlainText
                            verticalAlignment: Text.AlignTop
                        }
                        Rectangle {
                            id: frame_15

                            x: 16
                            y: 46

                            height: 82
                            width: 519

                            color: "transparent"

                            Rectangle {
                                id: frame_16

                                height: 22
                                width: 519

                                color: "transparent"

                                Rectangle {
                                    id: frame_17

                                    y: 0.50

                                    height: 17
                                    width: 148

                                    color: "transparent"

                                    Rectangle {
                                        id: frame_18

                                        y: 0.50

                                        height: 16
                                        width: 16

                                        clip: true
                                        color: "transparent"

                                        Rectangle {
                                            id: dollar_sign

                                            height: 16
                                            width: 16

                                            clip: true
                                            color: "transparent"

                                            Shape {
                                                id: _vector_9

                                                x: 4
                                                y: 1.33

                                                height: 13.33
                                                width: 8

                                                ShapePath {
                                                    id: _vector_9_ShapePath0

                                                    fillColor: "#00000000"
                                                    strokeColor: "#5a6266"
                                                    strokeWidth: 2

                                                    PathSvg {
                                                        id: _vector_9_ShapePath0_PathSvg0

                                                        path: "M 4 0 L 4 13.334400177001953 M 7.333333333333333 2.000160026550293 L 2.333333333333333 2.000160026550293 C 1.7144948641459146 2.000160026550293 1.1210025151570637 2.246012457563393 0.6834176381429036 2.6836323471767174 C 0.24583276112874342 3.121252236790042 5.921189464667501e-16 3.7147920730455093 0 4.333680057525634 C 5.921189464667501e-16 4.952568042005759 0.24583276112874342 5.546107878261227 0.6834176381429036 5.983727767874552 C 1.1210025151570637 6.421347657487877 1.7144948641459146 6.667200088500976 2.333333333333333 6.667200088500977 L 5.666666666666666 6.667200088500977 C 6.285505135854085 6.667200101543066 6.8789981206258135 6.913052519514076 7.316582997639974 7.350672409127401 C 7.754167874654134 7.788292298740726 8 8.381832134996193 8 9.000720119476318 C 8 9.619608103956443 7.754167874654134 10.21314857604566 7.316582997639974 10.650768465658984 C 6.8789981206258135 11.08838835527231 6.285505135854085 11.334240137409571 5.666666666666666 11.33424015045166 L 0 11.33424015045166"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    Text {
                                        id: cash_Register_Accept

                                        x: 24

                                        height: 17
                                        width: 125

                                        color: "#1a1d20"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 13
                                        font.weight: Font.Normal
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Cash Register Accept"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                                Rectangle {
                                    id: frame_19

                                    x: 485

                                    height: 18
                                    width: 34

                                    color: "#7b5c40"
                                    radius: 9

                                    Image {
                                        id: ellipse_2

                                        x: 18
                                        y: 2

                                        source: Qt.resolvedUrl("assets/ellipse_2.png")
                                    }
                                }
                            }
                            Rectangle {
                                id: frame_20

                                y: 32

                                height: 22
                                width: 519

                                color: "transparent"

                                Rectangle {
                                    id: frame_21

                                    y: 0.50

                                    height: 17
                                    width: 186

                                    color: "transparent"

                                    Rectangle {
                                        id: frame_22

                                        y: 0.50

                                        height: 16
                                        width: 16

                                        clip: true
                                        color: "transparent"

                                        Rectangle {
                                            id: credit_card

                                            height: 16
                                            width: 16

                                            clip: true
                                            color: "transparent"

                                            Shape {
                                                id: _vector_10

                                                x: 1.33
                                                y: 3.33

                                                height: 9.33
                                                width: 13.33

                                                ShapePath {
                                                    id: _vector_10_ShapePath0

                                                    fillColor: "#00000000"
                                                    strokeColor: "#5a6266"
                                                    strokeWidth: 2

                                                    PathSvg {
                                                        id: _vector_10_ShapePath0_PathSvg0

                                                        path: "M 0 3.333714348929269 L 13.334400177001953 3.333714348929269 M 1.3334400177001953 0 L 12.000960159301757 0 C 12.737399338694011 0 13.334400177001953 0.597021865040363 13.334400177001953 1.3334857395717077 L 13.334400177001953 8.000914437430247 C 13.334400177001953 8.737378232479648 12.737399338694011 9.334400177001953 12.000960159301757 9.334400177001953 L 1.3334400177001953 9.334400177001953 C 0.5970013946624704 9.334400177001953 0 8.737378232479648 0 8.000914437430247 L 0 1.3334857395717077 C 0 0.597021865040363 0.5970013946624704 0 1.3334400177001953 0 Z"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    Text {
                                        id: credit_Debit_Card_Terminal

                                        x: 24

                                        height: 17
                                        width: 163

                                        color: "#1a1d20"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 13
                                        font.weight: Font.Normal
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Credit / Debit Card Terminal"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                                Rectangle {
                                    id: frame_23

                                    x: 485

                                    height: 18
                                    width: 34

                                    color: "#7b5c40"
                                    radius: 9

                                    Image {
                                        id: ellipse_3

                                        x: 18
                                        y: 2

                                        source: Qt.resolvedUrl("assets/ellipse_3.png")
                                    }
                                }
                            }
                            Rectangle {
                                id: frame_24

                                y: 64

                                height: 18
                                width: 519

                                color: "transparent"

                                Rectangle {
                                    id: frame_25

                                    y: 0.50

                                    height: 17
                                    width: 200

                                    color: "transparent"

                                    Rectangle {
                                        id: frame_26

                                        y: 0.50

                                        height: 16
                                        width: 16

                                        clip: true
                                        color: "transparent"

                                        Rectangle {
                                            id: smartphone

                                            height: 16
                                            width: 16

                                            clip: true
                                            color: "transparent"

                                            Shape {
                                                id: _vector_11

                                                x: 3.33
                                                y: 1.33

                                                height: 13.33
                                                width: 9.33

                                                ShapePath {
                                                    id: _vector_11_ShapePath0

                                                    fillColor: "#00000000"
                                                    strokeColor: "#5a6266"
                                                    strokeWidth: 2

                                                    PathSvg {
                                                        id: _vector_11_ShapePath0_PathSvg0

                                                        path: "M 4.667200088500977 10.667520141601562 L 4.673867669804167 10.667520141601562 M 1.3334857395717077 0 L 8.000914437430247 0 C 8.737378232479648 0 9.334400177001953 0.5970013946624704 9.334400177001953 1.3334400177001953 L 9.334400177001953 12.000960159301757 C 9.334400177001953 12.737399338694011 8.737378232479648 13.334400177001953 8.000914437430247 13.334400177001953 L 1.3334857395717077 13.334400177001953 C 0.597021865040363 13.334400177001953 0 12.737399338694011 0 12.000960159301757 L 0 1.3334400177001953 C 0 0.5970013946624704 0.597021865040363 0 1.3334857395717077 0 Z"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    Text {
                                        id: digital_Wallet_NFC_QR_Codes_

                                        x: 24

                                        height: 17
                                        width: 177

                                        color: "#1a1d20"
                                        font.family: "IBM Plex Sans"
                                        font.pixelSize: 13
                                        font.weight: Font.Normal
                                        horizontalAlignment: Text.AlignLeft
                                        text: "Digital Wallet (NFC/QR Codes)"
                                        textFormat: Text.PlainText
                                        verticalAlignment: Text.AlignTop
                                    }
                                }
                                Rectangle {
                                    id: frame_27

                                    x: 485

                                    height: 18
                                    width: 34

                                    color: "#7b5c40"
                                    radius: 9

                                    Image {
                                        id: ellipse_4

                                        x: 18
                                        y: 2

                                        source: Qt.resolvedUrl("assets/ellipse_4.png")
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}