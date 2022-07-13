*** Settings ***

Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Validate_drop_down_TC_01
    Open Browser        https://techedtrainings.com/contact/        Chrome
    Maximize Browser Window

    #   Select Area of Interest drop down
    Wait Until Page Contains Element    menu-363
    Select From List By Value    menu-363   DevOps
    Sleep    2
    Select From List By Value    menu-363     Testing
    Sleep    2
    Select From List By Index    menu-363   1
    Sleep    2
    Select From List By Index    menu-363   5

    #   Close browsers
    Close All Browsers
*** Keywords ***

