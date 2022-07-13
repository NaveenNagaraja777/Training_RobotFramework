*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

SS:01
        Open Browser        https://the-internet.herokuapp.com/checkboxes       Chrome
        Maximize Browser Window

        #Validate check boxes are present
        Wait Until Page Contains Element    //h3[text()='Checkboxes']

        #Validate Check box 1 is not selcted
        Checkbox Should Not Be Selected    (//input[@type='checkbox'])[1]

        #Validate check box 2 is selcted
        Checkbox Should Be Selected    (//input[@type='checkbox'])[2]

        #Check Check Box 1 check box and validate Check box 1 and Check box 2 is selected
        Click Element    (//input[@type='checkbox'])[1]
        Checkbox Should Be Selected    (//input[@type='checkbox'])[1]
        Checkbox Should Be Selected    (//input[@type='checkbox'])[2]

        #Uncheck check box 2 and validate CHeck box is not selected and CHeck box 1 is selcted
        Click Element    (//input[@type='checkbox'])[2]
        Checkbox Should Not Be Selected    (//input[@type='checkbox'])[2]
        Checkbox Should Be Selected    (//input[@type='checkbox'])[1]

        #Close all browsers
        Close All Browsers



*** Keywords ***

