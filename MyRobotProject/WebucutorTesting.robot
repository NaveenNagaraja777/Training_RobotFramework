*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${expetcedurl}      https://www.webucator.com/
${expectedTitle}    "Online and Onsite Instructor-led Training Classes | Webucator"


*** Test Cases ***
Test_Webucutor_Home_Page
        Open Browser        https://www.webucator.com/      Chrome
        Maximize Browser Window
        #   Check Logo
        Wait Until Page Contains Element    xpath:(//img[@alt='Webucator Logo'])[2]
        #   Check SignIn
        Wait Until Page Contains Element    xpath://a[contains(.,'SIGN IN')]
        #   Click on Logo
        Click Element    xpath:(//img[@alt='Webucator Logo'])[2]
        #   Verify URL
        ${pageURL}=       Get Location
        Log To Console    ${pageURL}
        Should Be True    """${pageURL}"""=="""${expetcedurl}"""
        #  Verify Title
        Wait For Condition    return document.title==${expectedTitle}
        Close All Browsers


*** Keywords ***