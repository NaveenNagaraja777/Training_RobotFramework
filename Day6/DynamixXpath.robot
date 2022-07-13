*** Settings ***
Library    SeleniumLibrary
Library    String
Library     ../Reusebale/DynamicXpath.py

*** Variables ***
${popularCOurses}       Data Science Course,Artificial Intelligence Course,Machine Learning Certification Course,Python Certification,DevOps Certification
${url}      https://intellipaat.com/
${browser}      headlesschrome

#   //h4[text()='Popular Courses']/../p[3]/a[text()='Data Science Course']

*** Test Cases ***
Intellipaat_Validate_Pupular_Courses_TC_01
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


