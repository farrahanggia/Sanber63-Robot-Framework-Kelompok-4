*** Settings ***
Resource         ../base.robot
Resource         ../HomePage/homePage.robot
Variables        login-page-locators.yaml

*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${username_login_input}
    Wait Until Element Is Visible    ${password_login_input}
    Wait Until Element Is Visible    ${signIn_button_loginPage}

Input Username
    [Arguments]    ${username}
    Input Text    ${username_login_input}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${password_login_input}    ${password}
    

Click Sign In Button On login Screen
    Click Element    ${signIn_button_loginPage}
  
Login With Valid Data
    [Arguments]    ${username}=${VALID_USERNAME}    ${password}=${VALID_PASSWORD}
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Login Appears
    Input Username    ${username}
    Input Password    ${password}
    Click Sign In Button On login Screen


#Verify User Successfully Login
    #Wait Until Element Is Visible    //android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]