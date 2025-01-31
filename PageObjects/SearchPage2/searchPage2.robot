*** Settings ***
Variables        search-page2-locator.yml
Library          AppiumLibrary

*** Keywords ***
Click Search Menu
    Click Element    ${search_menu}

Verify Search Page


Search Flight


Click Button Search
