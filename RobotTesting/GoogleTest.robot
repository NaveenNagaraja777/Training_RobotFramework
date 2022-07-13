*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***

Test_Google_Application_Basic_Testing

        Open Browser        https://www.google.com      Chrome
        Maximize Browser Window
        #   Validate Google Logo
        Basic_Testing


Test_Google_Application_Login_Button

        Open Browser        https://www.google.com      Chrome
        Maximize Browser Window
        #   Validate Google SignIN
        Sign_In_Page_Validation

*** Keywords ***

Basic_Testing
         Wait Until Page Contains Element    xpath://img[@class='lnXdpd']
        #   Validate Google Search
        Wait Until Page Contains Element    xpath:(//input[@name='btnK'])[2]
        #   Validate Feeling Im Lucky
        Wait Until Page Contains Element    xpath:(//input[@name='btnI'])[2]
        #   Validate Google Search Text Box
        Wait Until Page Contains Element    xpath://input[@name='q']
        Input Text    xpath://input[@name='q']    robot framework
        Sleep    10
        Close All Browsers

Sign_In_Page_Validation
        Wait Until Page Contains Element    xpath://a[text()='Sign in']
        Click Element    xpath://a[text()='Sign in']
        Wait Until Page Contains    Sign in
        Wait Until Page Contains    Use your Google Account
        Close All Browsers

