*** Settings ***
Library    SeleniumLibrary
Library    String
Library     ../Reusebale/DynamicXpath.py

*** Variables ***

#   //h4[text()='Popular Courses']/../p[3]/a[text()='Data Science Course']

*** Test Cases ***
Intellipaat_Validate_Pupular_Courses_TC_01

        readXMLTestData
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

    #   Split popular courses

         @{subPopCourses}=    Split String   ${popularCOurses}    ,

    #   To iterate string of array

    FOR    ${a}    IN    @{subPopCourses}
        Log    ${a}
        Log To Console    ${a}
        ${runTimeXPath}     DynamicXpath.subCourse_xpath    ${a}
        Log To Console    ${runTimeXPath}
        Wait Until Page Contains Element    ${runTimeXPath}
       # Click Element    ${runTimeXPath}

    END

    Close All Browsers

*** Keywords ***
readXMLTestData
     ${url}     DynamicXpath.readXmlfromrobotFrameork    url
     ${browser}     DynamicXpath.readXmlfromrobotFrameork    browser
     ${popularCOurses}     DynamicXpath.readXmlfromrobotFrameork    popularCourses
     Set Global Variable    ${url}
     Set Global Variable    ${browser}
     Set Global Variable    ${popularCOurses}
