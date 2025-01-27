*** Settings ***
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
User should be able to login with valid data 
    # Click Sign In Button On Home Screen
    # Input Username    username=${VALID_USERNAME}
    # Input Password
    # Click Sign In Button On login Screen
    Verify User is Logged In