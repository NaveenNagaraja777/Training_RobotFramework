*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${linktestPrintValidate}    Home

*** Test Cases ***
Print_All_Links_TC_01
        Open Browser    https://techedtrainings.com/contact/    Chrome
        Maximize Browser Window

        # Get all the links in the page
        ${allLinks}     Get Element Count    xpath://a
        Log To Console    ${allLinks}
        Should Be True    ${allLinks}==27

        #   To print all the links
        ${printLinks}   Get WebElements    xpath://a
        FOR    ${element}    IN    @{printLinks}
            Log    ${element}
            ${myRunTimeLinks}   Get Text     ${element}
            Log To Console    ${myRunTimeLinks}

            #   Check link in the list and exit if it is found
            Exit For Loop If    """${myRunTimeLinks}"""=="""${linktestPrintValidate}"""

        END
        Close All Browsers
*** Keywords ***