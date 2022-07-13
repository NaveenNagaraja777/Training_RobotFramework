*** Settings ***
Library    SeleniumLibrary
Library     ../Reusebale/fleekIt.py
Library    String

*** Variables ***

*** Test Cases ***
#TC_01
    #Verify_Global_Links

#TC_02
    #Verify_Contact_US

TC_03
    Keyword1
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    

    Sleep    2
    #   Validate the client says and individual client names
    Wait Until Page Contains Element    //h2[text()='CLIENT SAYS']

    #   Validate arrow keys in 'Client Says' section
    Scroll Element Into View    //a[@class='flex-next']
    ${current}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
    Log To Console    ${current}

    Click Element    //a[@class='flex-next']
    ${next}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
    Should Not Be Equal    """${current}"""    """${next}"""

    Scroll Element Into View    //a[@class='flex-prev']
    Click Element    //a[@class='flex-prev']
    ${prev}      Get Text    //li[@class='testimonial_content flex-active-slide']//p/span[2]
    Should Be Equal    """${current}"""    """${prev}"""
    Sleep    2

    #   Close Browser
    Close All Browsers

*** Keywords ***

Keyword1
     ${url}     fleekIt.readFleekITXMLTestData    url
     ${browser}     fleekIt.readFleekITXMLTestData    browser
     ${headerLinks}     fleekIt.readFleekITXMLTestData    headerLinks
     ${servicesLinks}     fleekIt.readFleekITXMLTestData    servicesLinks
     ${contactUsURL}        fleekIt.readFleekITXMLTestData    contactUsURL
     Set Global Variable    ${url}
     Set Global Variable    ${browser}
     Set Global Variable    ${headerLinks}
     Set Global Variable    ${servicesLinks}
     Set Global Variable    ${contactUsURL}


Fill_Contact_Us_Form

    ${firstName}        fleekIt.readFleekITXMLTestData      firstName
    Set Global Variable    ${firstName}
    Input Text    //input[@name='your-name']        ${firstName}

    ${lastName}     fleekIt.readFleekITXMLTestData       lastName
    Set Global Variable    ${lastName}
    Input Text    //input[@name='LastName']   ${lastName}

    ${email}        fleekIt.readFleekITXMLTestData     email
    Set Global Variable    ${email}
    Input Text    //input[@name='your-email']       ${email}

    ${phone}        fleekIt.readFleekITXMLTestData     phone
    Set Global Variable    ${phone}
    Input Text    //input[@name='your-phone']       ${phone}

    ${subject}      fleekIt.readFleekITXMLTestData       subject
    Set Global Variable    ${subject}
    Input Text    //input[@name='your-subject']       ${subject}

    ${message}      fleekIt.readFleekITXMLTestData        message
    Set Global Variable    ${message}
    Input Text    //textarea[@name='your-message']        ${message}

Verify_Global_Links
    Keyword1
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    #   Validate the logo
    Wait Until Page Contains Element    //img[@class='mobile']

    #   Validate primary menu bars(Dynamix Xpaths and XML)
    @{headerLink}       Split String    ${headerLinks}  ,

    FOR    ${element}    IN    @{headerLink}
        Log    ${element}
        Log To Console    ${element}
        ${runTimeHeader}    fleekIt.fleekTopMenuBars    ${element}
    END

    #   Mouse hover on Services and validate the sublinks
        Mouse Over    //nav[@class='main_menu drop_down right']//span[text()='Services']
     @{service}     Split String    ${servicesLinks}    ,
     FOR    ${element}    IN    @{service}
        Log    ${element}
        Log To Console    ${element}
        ${runTimeHeader}    fleekIt.fleekTopMenuBars    ${element}
    END

    #       Close browser
    Close All Browsers

Verify_Contact_US

        Keyword1
        Open Browser    ${url}      ${browser}
        Maximize Browser Window

    #   Click on Contact US
        Wait Until Page Contains Element    //nav[@class='main_menu drop_down right']//span[text()='Contact Us']
        Click Element    //nav[@class='main_menu drop_down right']//span[text()='Contact Us']
        Sleep    2

    #   Validate 'software-testing-agency-contact' in curent URL
        ${runTimeURL}   Get Location
        Log To Console    ${runTimeURL}
        Should Be True    """${contactUsURL}"""   In""""${runTimeURL}"""

    #   Fill the form and Dont click on Submit button
        Fill_Contact_Us_Form

     #  Validate Netherland address
        ${NetherLandAddress}        Get Text    //h2[text()='THE NETHERLANDS']/following-sibling::p[1]
        Should Be True    "Vijzelstraat 68-78"   In""""${NetherLandAddress}"""
        Should Be True    "1017 HL | Amsterdam"   In""""${NetherLandAddress}"""
        Should Be True    "The Netherlands"   In""""${NetherLandAddress}"""

     #  Close Browser
        Close All Browsers