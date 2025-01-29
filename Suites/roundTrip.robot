*** Settings ***
Resource          ../PageObjects/base.robot
Resource          ../PageObjects/HomePage/homePage.robot
Resource          ../PageObjects/LoginPage/loginPage.robot
Resource          ../PageObjects/RoundPage/roundPage.robot
Test Setup        Run Keywords    
...    Open Flight Application    
...    AND 
...    Login With Valid Data
Test Teardown     Close Flight Application

*** Variables ***
${inputUsername}    support@ngendigital.com
${inputPassword}    abc123

*** Test Cases ***
User should be able book a flight
    Verify User is Logged In
    Booking Flight Round Trip
    
