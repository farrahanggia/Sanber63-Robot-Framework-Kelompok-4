*** Settings ***
Library    AppiumLibrary
Resource    ../PageObjects/base.robot
Variables  ../PageObjects/SignOut/SignOut-page-locators.yaml

*** Keywords ***
Open Flight Application
    [Arguments]    ${remote_url}    ${platform_name}    ${platform_version}    ${device_name}    ${app_package}    ${app_activity}
    Open Application    remote_url=${remote_url}
    ...    platformName=${platform_name}
    ...    platformVersion=${platform_version}
    ...    deviceName=${device_name}
    ...    appPackage=${app_package}
    ...    appActivity=${app_activity}

Sign Out From Application
    Click Element    ${sign_out_button}

Close Flight Application
    Close Application

*** Test Cases ***
Test Open and Sign Out From Flight Application
    Open Flight Application   ${REMOTE_URL}    ${PLATFORM_NAME}    ${PLATFORM_VERSION}    ${DEVICE_NAME}    ${APP_PAVKAGE}    ${APP_ACTIVITY}
    Sign Out From Application
    Close Flight Application
