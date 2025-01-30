*** Settings ***
Documentation    Home page keyword related
Variables        home-page-locators.yaml
Library          AppiumLibrary

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible    locator=${app_icon_image}

Click Sign In Button On Home Screen
    Wait Until Element Is Visible    ${signIn_button_homepage}
    Click Element            locator=${signIn_button_homepage}

Verify User is Logged In
    Wait Until Element Is Visible    ${userName_text_homepage}