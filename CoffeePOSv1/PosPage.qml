import QtQuick
import QtQuick.Shapes

Rectangle {
    id: pos_page

    property double subtotalAmount: 0.00
    property double discountAmount: 0.00
    property double grandTotalAmount: 0.00

    height: 768
    width: 1366

    clip: true
    color: "#fbfbfb"

    function calculateTotal(){
        var tempTotal = 0.0;
        for(var i = 0; i < cartModel.count; i++){
            tempTotal += cartModel.get(i).price * cartModel.get(i).qty;
        }
        subtotalAmount = tempTotal;
        grandTotalAmount = subtotalAmount - discountAmount;
    }

    ListModel{
        id: cartModel
    }
    
    function addToCart(product_name, product_price){
        var found = false;
        for(var i = 0; i < cartModel.count; i++){
            if(cartModel.get(i).name === product_name){
                cartModel.setProperty(i, "qty", cartModel.get(i).qty + 1);
                found = true;
                break;
            }
        }
        if(!found){
            cartModel.append({"name": product_name, "price": product_price, "qty": 1});
        }
        calculateTotal();
    }
    
    Loader{
        sourceComponent: mainLoader.member_status == "admin" ? sidebarAdmin : sidebarCashier
    }

    Component{
        id: sidebarAdmin
            AdminSidebar{
                activePage: "pos"
                x: 0
                y: 0
            }
    }

    Component{
        id: sidebarCashier
            CashierSidebar{
                activePage: "pos"
                x: 0
                y: 0
            }
    }

    Rectangle {
        id: pos_workspace

        x: 200

        height: 768
        width: 826

        color: "transparent"

        Image {
            id: top_header

            source: Qt.resolvedUrl("assets/top_header_1.png")

            Rectangle {
                id: title_block

                x: 24
                y: 16

                height: 43
                width: 177

                color: "transparent"

                Text {
                    id: page_title

                    height: 23
                    width: 178

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 18
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "POS Cashier Console"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: page_subtitle

                    y: 27

                    height: 16
                    width: 157

                    color: "#8e9599"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Fast checkouts, live registers"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
            Rectangle {
                id: user_profile_badge

                x: 651
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
            id: category_row
            property string activeTab: cat_tab_All
            y: 75

            height: 52
            width: 826

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
                color: activeTab === cat_tab_All ? "#dee2e6" : (tabAllMouse.containsMouse ? "#fef5e7" : "#efe3d8")
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
                color: activeTab === cat_tab_Coffee ? "#fef5e7" : (tabCoffeeMouse.containsMouse ? "#fef5e7" : "#ffffff")
                radius: 2

                MouseArea{
                    id: tabCoffeeMouse
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    hoverEnabled: true
                    onClicked: {
                        console.log("Coffee category clicked");
                        activeTab: cat_tab_Coffee
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
        Rectangle {
            id: product_grid

            y: 127

            height: 641
            width: 826

            color: "transparent"

            Rectangle {
                id: product_card

                x: 24
                y: 24

                height: 160
                width: 200

                border.color: "#dee2e6"
                border.width: 1
                color: espressoMouse.containsMouse ? "#fef5e7" : "#ffffff"

                MouseArea{
                    id: espressoMouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        addToCart("Espresso Single Shot", 2.50)
                    }
                }
                Rectangle {
                    id: card_meta

                    x: 12
                    y: 94

                    height: 35
                    width: 176

                    color: "transparent"

                    Text {
                        id: prod_title

                        height: 17
                        width: 177

                        color: "#1a1d20"
                        elide: Text.ElideRight
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
                        id: prod_price

                        y: 19

                        height: 16
                        width: 37

                        color: "#7b5c40"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$2.50"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
            Rectangle {
                id: product_card_1

                x: 240
                y: 24

                height: 160
                width: 200

                border.color: "#dee2e6"
                border.width: 1
                color: americanoMouse.containsMouse ? "#fef5e7" : "#ffffff"

                MouseArea{
                    id: americanoMouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        addToCart("Americano Black", 3.20)
                    }
                }

                Rectangle {
                    id: card_meta_1

                    x: 12
                    y: 94

                    height: 35
                    width: 176

                    color: "transparent"

                    Text {
                        id: prod_title_1

                        height: 17
                        width: 177

                        color: "#1a1d20"
                        elide: Text.ElideRight
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                        horizontalAlignment: Text.AlignLeft
                        text: "Americano Black"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                    }
                    Text {
                        id: prod_price_1

                        y: 19

                        height: 16
                        width: 37

                        color: "#7b5c40"
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 12
                        font.weight: Font.Bold
                        horizontalAlignment: Text.AlignLeft
                        text: "$3.20"
                        textFormat: Text.PlainText
                        verticalAlignment: Text.AlignTop
                    }
                }
            }
        }
    }
    Image {
        id: checkout_cart

        x: 1026

        source: Qt.resolvedUrl("assets/checkout_cart.png")

        Rectangle {
            id: cart_header

            height: 50
            width: 340

            border.color: "#dee2e6"
            border.width: 1
            color: "transparent"

            Rectangle {
                id: frame

                x: 16
                y: 16

                height: 18
                width: 116

                color: "transparent"

                Rectangle {
                    id: shopping_basket

                    y: 1

                    height: 16
                    width: 16

                    clip: true
                    color: "transparent"

                    Shape {
                        id: _vector_9

                        x: 1.33
                        y: 2.67

                        height: 10.67
                        width: 13.33

                        ShapePath {
                            id: _vector_9_ShapePath0

                            fillColor: "#00000000"
                            strokeColor: "#1a1d20"
                            strokeWidth: 2

                            PathSvg {
                                id: _vector_9_ShapePath0_PathSvg0

                                path: "M 8.667360115051268 4.666781124546584 L 8.000640106201171 10.666928284677907 M 11.33424015045166 4.666781124546584 L 8.667360115051268 0 M 0 4.666781124546584 L 13.334400177001953 4.666781124546584 M 1.0000800132751464 4.666781124546584 L 2.0668319638519277 9.600235201890728 C 2.1291718664748203 9.905943816447644 2.2967489108878962 10.180112237160207 2.5403929919428263 10.375016675765497 C 2.7840370729977564 10.569921114370787 3.0883187509021353 10.673219011970707 3.400271981552123 10.666928284677907 L 9.934127877532955 10.666928284677907 C 10.246081108182942 10.673219011970707 10.550362468170448 10.569921114370787 10.794006549225378 10.375016675765497 C 11.037650630280307 10.180112237160207 11.20522799261026 9.905943816447644 11.267567895233151 9.600235201890728 L 12.400992418945316 4.666781124546584 M 1.6668000221252441 7.666854704612246 L 11.667600154876709 7.666854704612246 M 2.000160026550293 4.666781124546584 L 4.667040061950684 0 M 4.667040061950684 4.666781124546584 L 5.333760070800781 10.666928284677907"
                            }
                        }
                    }
                }
                Text {
                    id: cart_title

                    x: 24

                    height: 18
                    width: 93

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 14
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Current Order"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
            Rectangle {
                id: items_counter

                x: 270
                y: 16

                height: 18
                width: 54

                color: "#dee2e6"
                radius: 12

                Text {
                    id: counter_text

                    x: 8
                    y: 2

                    height: 14
                    width: 39

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 11
                    font.weight: Font.DemiBold
                    horizontalAlignment: Text.AlignLeft
                    text: "3 items"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
        }
        Rectangle {
            id: cart_items

            y: 50

            height: 541
            width: 340

            color: "transparent"
            clip: true

            ListView{
                id: cartList
                anchors.fill: parent
                model: cartModel
                spacing: 8

                delegate: Rectangle{
                    x: 16
                    height: 47
                    width: 308
                    border.color: "#dee2e6"
                    border.width: 1
                    color: "transparent"

                    Text{
                        x: 10
                        y: 5
                        text: model.name
                        font.family: "IBM Plex Sans"
                        font.pixelSize: 13
                        font.weight: Font.DemiBold
                    }

                    Text{
                        x: 10
                        y: 25
                        text: "$" + model.price.toFixed(2) + " each"
                        color: "#5a6266"
                        font.pixelSize: 11
                    }

                    Text{
                        x: 240
                        y: 15
                        text: "$" + (model.price * model.qty).toFixed(2)
                        font.family: "IBM Plex Mono"
                        font.pixelSize: 13
                        font.weight: Font.Bold
                    }
                }
            }
        }
        Rectangle {
            id: totals_board

            y: 591

            height: 177
            width: 340

            border.color: "#dee2e6"
            border.width: 1
            color: "transparent"

            Rectangle {
                id: calc_subtotal

                x: 16
                y: 16

                height: 17
                width: 308

                color: "transparent"

                Text {
                    id: label

                    height: 16
                    width: 47

                    color: "#5a6266"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Subtotal"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: value

                    x: 261

                    height: 17
                    width: 48

                    color: "#1a1d20"
                    font.family: "IBM Plex Mono"
                    font.pixelSize: 13
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "$" + subtotalAmount.toFixed(2)
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
            Rectangle {
                id: calc_discount

                x: 16
                y: 45

                height: 17
                width: 308

                color: "transparent"

                Text {
                    id: label_1

                    height: 16
                    width: 95

                    color: "#5a6266"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 12
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: "Discount (Promo)"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: value_1

                    x: 261

                    height: 17
                    width: 48

                    color: "#a53f3f"
                    font.family: "IBM Plex Mono"
                    font.pixelSize: 13
                    font.weight: Font.Normal
                    horizontalAlignment: Text.AlignLeft
                    text: -"$" + discountAmount.toFixed(2)
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
            Rectangle {
                id: calc_total

                x: 16
                y: 74

                height: 29
                width: 308

                border.color: "transparent"
                border.width: 1
                color: "transparent"

                Text {
                    id: label_2

                    y: 8

                    height: 18
                    width: 78

                    color: "#1a1d20"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 14
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "Grand Total"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
                Text {
                    id: value_2

                    x: 250
                    y: 8

                    height: 21
                    width: 59

                    color: "#7b5c40"
                    font.family: "IBM Plex Mono"
                    font.pixelSize: 16
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "$" + grandTotalAmount.toFixed(2)
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
            Rectangle {
                id: pay_button

                x: 16
                y: 115

                height: 46
                width: 308

                color: payMouse.containsMouse ? "#5a4a30" : "#7b5c40"

                MouseArea{
                    id: payMouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    
                    onClicked: {
                        console.log("Proceed to pay clicked. Total amount: $" + grandTotalAmount.toFixed(2));
                        // Here you can add the logic to proceed to payment
                    }
                }

                Text {
                    id: pay_label

                    x: 96.50
                    y: 14

                    height: 18
                    width: 116

                    color: "#ffffff"
                    font.family: "IBM Plex Sans"
                    font.pixelSize: 14
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    text: "PROCEED TO PAY"
                    textFormat: Text.PlainText
                    verticalAlignment: Text.AlignTop
                }
            }
        }
    }
}