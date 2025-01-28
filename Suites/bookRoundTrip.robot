*** Settings ***
Library    AppiumLibrary
Library    Collections

*** Keywords ***
# Open Flight App
# Verify Home Screen Appears
# Click Sign In Button On Home Screen
# Verify Login Screen Appears
# Input Username
# Input Password
# Click Sign In Button On Login Screen
# Verify User Successfully Login
# Click Book Flight Button On Home Screen
# Verify Book Flight Screen Appears
# Click Round Trip Button On Book Flight Screen
# Click From City Combobox
# Choose 'Toronto'
# Verify Toronto City Appears
# CLick To City Combobox
# Choose 'Ottawa'
# Verify Ottawa City Appears
# Click Class Combobox
# Choose 'Business'
# Verify Business Class Appears
# Click Start Date Picker
# Choose '8/1/2019'
# Click OK Button
# Verify Today Date Appears
# Click End Date Picker
# Choose '8/7/2019'
# Click Button OK
# Verify 8/7/2019 Date Appears
# Click Flight Type Radio Button
# Click Book
# Verify Book Flight Successfully Confirm Button
# Click Confirm Button
# Verify Flight Booked Successfully
# Close Flight App

Open Flight Application
    Open Application
    ...    remote_url=http://127.0.0.1:4723/wd/hub    
    ...    platformName=Android
    ...    platformVersion=12.0
    ...    deviceName=emulator-554    
    ...    appPackage=com.example.myapplication    
    ...    appActivity=com.example.myapplication.MainActivity
    
Verify Home Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]
    
Click Sign In Button On Home Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
    
Verify Login Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView2"]
    
Input Username
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com
    
Input Password
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123
    
Click Sign In Button On Login Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    
Verify User Successfully Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Click Book Flight Button On Home Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]


Verify Book Flight Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView3"]


Click Round Trip Button On Book Flight Screen
    CLick Element     locator=//android.support.v7.app.ActionBar.Tab[@content-desc="Round Trip"]

Click From City Combobox
    Wait Until Element Is Visible    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]


Choose Toronto City
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Toronto"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Toronto"]


Verify Toronto City Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Toronto"]

Click To City Combobox
    Wait Until Element Is Visible    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]

Choose 'Otawa' City
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]


Verify 'Otawa' City Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Ottawa"]


Click Class Combobox
    Wait Until Element Is Visible    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
    Click Element                    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]

Choose 'Business' Class
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]
    Click Element                    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]

Verify 'Business' Class Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]

Click Start Date Picker
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

Choose '8/1/2019' Date
    Wait Until Element Is Visible    locator=//android.view.View[@resource-id="android:id/month_view"]

Click OK Button
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]

Verify Today Date Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

Click End Date Picker
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Click Element                    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]

Choose '8/7/2019'
    Wait Until Element Is Visible    locator=//android.view.View[@resource-id="android:id/month_view"]
    Click Element                    locator=//android.view.View[@resource-id="android:id/month_view"]

Click Button OK
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]
Verify 8/1/2019 Date Appears
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]

Click Flight Type Radio Button
    Wait Until Element Is Visible    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
    Click Element                    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]


Click Book
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Verify Book Flight Successfully Confirm Button
    Wait Until Element Is Visible    locator=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.view.ViewGroup
    

Click Confirm Button
    Wait Until Element Is Visible    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify Flight Booked Successfully
    Wait Until Element Is Visible    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]
    Click Element                    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]

Close Flight Application
    Close Application


*** Test Cases ***
Open Flight App
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Login Screen Appears
    Input Username
    Input Password
    Click Sign In Button On Login Screen
    Verify User Successfully Login
    Click Book Flight Button On Home Screen
    Verify Book Flight Screen Appears
    Click Round Trip Button On Book Flight Screen
    Click From City Combobox
    Choose Toronto City
    Verify Toronto City Appears
    Click To City Combobox
    Choose 'Otawa' City
    Verify 'Otawa' City Appears
    Click Class Combobox
    Choose 'Business' Class
    Verify 'Business' Class Appears
    Click Start Date Picker
    Choose '8/1/2019' Date
    Click OK Button
    Verify Today Date Appears
    Click End Date Picker
    Choose '8/7/2019'
    Click Button OK
    Verify 8/1/2019 Date Appears
    Click Flight Type Radio Button
    Click Book
    Verify Book Flight Successfully Confirm Button
    Click Confirm Button
    Verify Flight Booked Successfully
    Close Flight Application

    