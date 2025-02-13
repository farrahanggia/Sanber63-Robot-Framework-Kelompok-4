*** Settings ***
Variables        booking-page-round-trip-locators.yaml
Library    AppiumLibrary

*** Keywords ***
Click Button Book
    Click Element    ${app_icon_book}

Verify Booking Page Appears
    Wait Until Element Is Visible    ${page_round_trip}
    Wait Until Element Is Visible    ${picklist_from_city}
    Wait Until Element Is Visible    ${picklist_to_city}
    Wait Until Element Is Visible    ${picklist_class}
    Wait Until Element Is Visible    ${start_date}
    Wait Until Element Is Visible    ${end_date}
    Wait Until Element Is Visible    ${radio_button_flight}
    Wait Until Element Is Visible    ${button_book}

Click From City
    Click Element    ${picklist_from_city}
    Wait Until Element Is Visible    ${list_from_city_NY}
    Click Element    ${list_from_city_NY}

Click To City
    Click Element    ${picklist_to_city}
    Wait Until Element Is Visible    ${list_to_city_London}
    Click Element    ${list_to_city_London}

Click Class
    Click Element    ${picklist_class}
    Wait Until Element Is Visible    ${list_class_economy}
    Click Element    ${list_class_economy}

Choose Start Date
    Click Element    ${start_date}
    Wait Until Element Is Visible    ${start_date_oke}
    Click Element    ${start_date_oke}

Choose End Date
    Click Element    ${end_date}
    Wait Until Element Is Visible    ${end_date_oke}
    Click Element    ${end_date_oke}

Click Radio Button
    Click Element    ${radio_button_flight}

Click Button Booking
    Click Element    ${button_book}

Verify Pricing Page
    Wait Until Element Is Visible    ${price_booking_page}

Click Price Button
    Click Element    ${button_price}

Click Confirm Button
    Click Element    ${button_confirm}

Verify Reservation Number Page
    Wait Until Element Is Visible    ${reservation_number}

Booking Flight Round Trip
    Click Button Book
    Verify Booking Page Appears
    Click From City
    Click To City
    Click Class
    Choose Start Date
    Choose End Date
    Click Radio Button
    Click Button Booking
    Verify Pricing Page
    Click Price Button
    Click Confirm Button
    Verify Reservation Number Page
