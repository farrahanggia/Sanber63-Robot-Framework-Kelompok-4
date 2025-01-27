*** Settings ***
Resource        ../PageObjects/BookingPage/bookingPage.robot
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot
Resource        ../PageObjects/base.robot
Test Setup      Run Keywords    
...    Open Flight Application    
...    AND    
...    Login With Valid Data
Test Teardown   Close Flight Application

*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123

*** Test Cases ***
User should be able to booking flight
    Verify User is Logged In
    Booking Flight
