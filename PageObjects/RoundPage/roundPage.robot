*** Settings ***
Documentation    Round Page Key Related
Variables    round-page-locators.yaml
Variables    round-page-locators.yaml
Library    AppiumLibrary

*** Keywords ***

Click Button Book a flight
    Click Element    locator=${app_icon_book}

Verify Book Flight Screen Appears
    Wait Until Element Is Visible    locator=${page_form_round}

Click Round Trip Button On Book Flight Screen
    CLick Element     locator=${round_trip_button}

Click From City Combobox
    Wait Until Element Is Visible    locator=${wait_element_city}
    Click Element                    locator=${wait_element_city}


Choose Toronto City
    Wait Until Element Is Visible    locator=${toronto_city}
    Click Element                    locator=${toronto_city}



Verify Toronto City Appears
    Wait Until Element Is Visible    locator=${toronto_city}

Click To City Combobox
    Wait Until Element Is Visible    locator=${otawa_combobox}
    Click Element                    locator=${otawa_combobox}

Choose 'Otawa' City
    Wait Until Element Is Visible    locator=${otawa_city}
    Click Element                    locator=${otawa_city}


Verify 'Otawa' City Appears
    Wait Until Element Is Visible    locator=${otawa_city}


Click Class Combobox
    Wait Until Element Is Visible    locator=${class_combobox}
    Click Element                    locator=${class_combobox}

Choose 'Business' Class
    Wait Until Element Is Visible    locator=${class_business}
    Click Element                    locator=${class_business}

Verify 'Business' Class Appears
    Wait Until Element Is Visible    locator=${class_business}

Click Start Date Picker
    Wait Until Element Is Visible    locator=${start_date_picker}
    Click Element                    locator=${start_date_picker}


Choose '8/1/2019' Date
    Wait Until Element Is Visible    locator=${verify_date_picker}

Click OK Button
    Wait Until Element Is Visible    locator=${ok_button}
    Click Element                    locator=${ok_button}

Verify Today Date Appears
    Wait Until Element Is Visible    locator=${end_date_picker}

Click End Date Picker
    Wait Until Element Is Visible    locator=${end_date_picker}
    Click Element                    locator=${end_date_picker}

Choose '8/7/2019'
    Wait Until Element Is Visible    locator=${verify_date_picker}
    Click Element                    locator=${verify_date_picker}

Click Button OK
    Wait Until Element Is Visible    locator=${ok_button}
    Click Element                    locator=${ok_button}
Verify 8/1/2019 Date Appears
    Wait Until Element Is Visible    locator=${end_date_picker}

Click Flight Type Radio Button
    Wait Until Element Is Visible    locator=${flight_type_radio_button}
    Click Element                    locator=${flight_type_radio_button}


Click Book
    Wait Until Element Is Visible    locator=${book_flight_button}
    Click Element                    locator=${book_flight_button}

Verify Book Flight Successfully Confirm Button
    Wait Until Element Is Visible    locator=${verify_book_flight_confirm_button}
    

Click Confirm Button
    Wait Until Element Is Visible    locator=${confirm_order_button}
    Click Element                    locator=${confirm_order_button}

Verify Flight Booked Successfully
    Wait Until Element Is Visible    locator=${success_booking_flight}
    Click Element                    locator=${success_booking_flight}
    

Booking Flight Round Trip
    Click Button Book a flight
    Verify Book Flight Screen Appears
    Click Round Trip Button On Book Flight Screen
    Click From City Combobox
    Choose Toronto City
    Verify Toronto City Appears
    Click To City Combobox
    Choose 'Otawa' City
    Verify 'Otawa' City Appears
    Click Class Combobox
    Choose 'Business' Class
    Verify 'Business' Class Appears
    Click Start Date Picker
    Choose '8/1/2019' Date
    Click OK Button
    Verify Today Date Appears
    Click End Date Picker
    Choose '8/7/2019'
    Click Button OK
    Verify 8/1/2019 Date Appears
    Click Flight Type Radio Button
    Click Book
    Verify Book Flight Successfully Confirm Button
    Click Confirm Button
    Verify Flight Booked Successfully
    