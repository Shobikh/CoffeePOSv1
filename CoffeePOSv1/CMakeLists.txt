cmake_minimum_required(VERSION 3.16)
project(CoffeePOSv1 VERSION 1.0 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(CoffeePOSv1
    main.cpp
)

qt_add_qml_module(CoffeePOSv1
    URI coffeeposv1
    VERSION 1.0
    QML_FILES
        main.qml
        pages/DashboardPage.qml
        pages/InventoryPage.qml
        pages/LoginPage.qml
        pages/PosCategory.qml
        pages/PosPage.qml
        pages/PosPaymentPage.qml
        pages/ProductsPage.qml
        pages/ReceiptPage.qml
        pages/ReportsPage.qml
        pages/SettingsPage.qml
        pages/SuppliersPage.qml
        pages/TransactionsPage.qml
        pages/component/AdminSidebar.qml
        pages/component/CashierSidebar.qml
        pages/component/NavItem.qml
    RESOURCES
        assets/applogo.png
)

target_link_libraries(CoffeePOSv1 PRIVATE Qt6::Quick)
