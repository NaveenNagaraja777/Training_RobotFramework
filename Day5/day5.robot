*** Settings ***
Library     DateTime
*** Variables ***

*** Test Cases ***
Print_Current_Date
    ${DateandTime}=     Get Current Date
    Log To Console    ${DateandTime}
    ${DateandTime}=     Add Time To Date    ${DateandTime}  10 days
    Log To Console    ${DateandTime}
    ${DateandTime}=     Add Time To Date    ${DateandTime}  -5 days
    Log To Console    ${DateandTime}




*** Keywords ***