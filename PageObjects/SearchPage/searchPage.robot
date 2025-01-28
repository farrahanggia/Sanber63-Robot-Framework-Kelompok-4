*** Settings ***
Variables        search-page-locator.yml
Library          AppiumLibrary

*** Keywords ***
Click Seach Menu
    Click Element    ${search_menu}

Verify Search Page 
    Wait Until Element Is Visible    ${validate_page}

Seach Flight
    [Arguments]      ${flight_number}
    Input Text       ${form_input}    ${flight_number} 

Click Button Seach
    Click Element    ${search_btn}



