*** Settings ***
Variables        search-page-locator.yml
Library          AppiumLibrary

*** Keywords ***
Click Search Menu
    Click Element      ${search_menu}
    # Click Element    ${search_menu}

Verify Search Page
    Wait Until Element Is Visible    ${validate_page}
    # Click Element                  ${validate_page}

Search Flight
    [Arguments]                ${flight_number}
    Input Text or Number       ${form_input}    ${flight_number}

Click Button Search
    Click Element        ${search_btn}
    # Click Element      ${search_btn}

Wait Until Page Contains Element
    Wait Until Element Is Visible    ${validate_page}

Search Data
    Click Search Menu
    Verify Search Page
    Search Flight
    Click Button Search
    Wait Until Page Contains Element
