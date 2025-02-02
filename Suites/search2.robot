*** Settings ***
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot
Resource        ../PageObjects/SearchPage/searchPage.robot

Test Setup      Run Keywords
...    Open Flight Application
...    AND
...    Login With Valid Data
Test Teardown   Close Flight Application

*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123

*** Test Cases ***
User should be able to Search Flight Data
    Verify User is Logged In
    Click Search Menu
    Verify Search Page
    Search Flight    flight_number=DA935
    Click Button Search