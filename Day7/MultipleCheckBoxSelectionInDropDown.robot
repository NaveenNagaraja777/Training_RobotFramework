*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

Selct_Multiple_CheckBoxes_Under_DropDown_TC_01
        Open Browser        https://codepen.io/RobotsPlay/pres/pyNLdL       Chrome
        Maximize Browser Window
        Sleep    2
        #   Switch to I frame
        Select Frame    result
        #   Selection of multiple options under drop down
        Wait Until Page Contains Element    //div[@class='dropdown']
        Click Element    //div[@class='dropdown']
        Sleep    2
        Click Element    //input[@value='Selection 1']
        Click Element    //input[@value='Selection 2']
        Click Element    //input[@value='Selection 5']
        Sleep    2
        #   Close I frame
        Unselect Frame
        Close All Browsers
*** Keywords ***