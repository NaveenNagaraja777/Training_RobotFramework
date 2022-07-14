*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#   Docker commit to testing branch 1
${testUrl}      https://www.docker.com/
${browser}      Chrome
${gettingStartedURL}        https://www.docker.com/get-started/
${dockerAtomistTitle}       Docker Acquires Atomist
${dockerAtomist}        https://www.docker.com/blog/docker-acquires-atomist/
${dockerSocialMediaCOunt}       5
${dockerTwitterExpectedURL}     https://twitter.com/docker


*** Test Cases ***
Docker_Navigation_TC_01
    docker_top_menubars
Docker_Acquires_Atomist_TC_02
    docker_Atomist
Docker_Footer_Links_Count_TC_03
    docker_footerLinks
Docker_Company_Count_TC_04
    docker_Company_Partenerships
Docker_Social_Media_TC_05
    docker_Social_Media


*** Keywords ***

docker_top_menubars
    Open Browser    ${testUrl}      ${browser}
    Maximize Browser Window
    #   Validate the docker logo
    Wait Until Page Contains Element    xpath://li[@class='logo']/a

    #   Validate all header links
    Wait Until Page Contains Element    xpath:(//a[text()='Products'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Developers'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Pricing'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Blog'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='About Us'])[1]
    Wait Until Page Contains Element    xpath:(//a[text()='Partners'])[1]

    #   Do Mouse Hover on Developers link
    Mouse Over    xpath:(//a[text()='Developers'])[1]
    Sleep    3

    #   Click on Getting Started drop down option
    Click Element    (//a[text()='Getting started'])[1]
    Sleep    3

    #   Validate getting started URL
    ${runtimeURL}=  Get Location
    Log To Console    ${runtimeURL}
    Should Be True    """${runtimeURL}"""=="""${gettingStartedURL}"""

    #   Validate header "Get Started with Docker"
    Wait Until Page Contains    Get Started with Docker

    #   Navigate back to HomePage
    Go Back

    #   Validate Home Page URL
    ${runtimeURL}=  Get Location
    Log To Console    ${runtimeURL}
    Should Be True    """${runtimeURL}"""=="""${testUrl}"""

    #   Validate "Developers Love Docker." header
    Wait Until Page Contains    Developers Love Docker.

    #   Close docker application
    Close All Browsers

docker_Atomist

    Open Browser    ${testUrl}      ${browser}
    Maximize Browser Window
    Sleep    2
    #   Validate "Learn more" button
    Wait Until Page Contains Element    xpath:(//a[text()='Learn more'])[1]

    #   Validate "Docker Acquires Atomist" logo and Validate title='Docker Acquires Atomist'
    Wait Until Page Contains Element    xpath://picture[@title='Docker Acquires Atomist']

    #   Validate UI title 'Docker Acquires Atomist'
    ${runTimeTitle}=     Get Element Attribute    xpath://span/picture[@title='Docker Acquires Atomist']    title
    Log To Console    ${runTimeTitle}
    Should Be True    """${runTimeTitle}"""=="""${dockerAtomistTitle}"""

    #   CLick on Read now link present under Docker Acquires Atomist section
    Wait Until Page Contains Element    xpath://a[text()='Read now']
    Click Element    xpath://a[text()='Read now']
    Sleep    3

    #   Validate the new window url of Docker Acquires Atomist application

    #   Navigate to chile window
    ${window}=      Switch Window   locator=new
    ${runTimeURL}   Get Location
    Log To Console    ${runTimeURL}
    Should Be True    """${runTimeURL}"""=="""${dockerAtomist}"""

    #   Validate logo present in Docker Acquires Atomist application
    Wait Until Page Contains Element    xpath://li[@class='logo']/a

    #   Close Docker Acquires Atomist application
    Close Window
    Sleep    3
    Close All Browsers

docker_footerLinks
    Open Browser    ${testUrl}      ${browser}
    Maximize Browser Window
    Sleep    2
    #   Log to console 'Developer' count
    ${runTimeTitle}=     Get Text    xpath:(//div[@class='numbers-row']//span)[1]
    Log To Console    Developers Count: ${runTimeTitle}
    Should Be True    "million"    in """${runTimeTitle}"""

    #   Log to console 'Applications' count
    ${runTimeApplication}=      Get Text    xpath:(//div[@class='numbers-row']//span)[2]
    Log To Console    Application Count: ${runTimeApplication}
    Should Be True    "million"    in """${runTimeApplication}"""

    #   Log to console 'Monthly Image' count
    ${runTimePricing}=      Get Text    xpath:(//div[@class='numbers-row']//span)[3]
    Log To Console    Pricing : ${runTimePricing}
    Should Be True    "billion"    in """${runTimePricing}"""

    #   Close Browser
    Close All Browsers


docker_Company_Partenerships
    Open Browser    ${testUrl}      ${browser}
    Maximize Browser Window
    #   Get all the partnerships image count
    ${companyCount}=    Get Element Count    xpath://div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span
    Log To Console    ${companyCount}
    Should Be True    ${companyCount}==13

    #   Validate first 4 partnership image 1 by 1
    ${companyTitl1}=    Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[1]    alt
    Log To Console    ${companyTitl1}
    Should Be True    """${companyTitl1}"""=="""Bitbucket full"""

     ${companyTitl1}=    Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[2]    alt
    Log To Console    ${companyTitl1}
    Should Be True    """${companyTitl1}"""=="""Circleci full"""

    ${companyTitl1}=    Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[3]    alt
    Log To Console    ${companyTitl1}
    Should Be True    """${companyTitl1}"""=="""Elastic"""

    ${companyTitl1}=    Get Element Attribute    xpath:(//div[@class='et_pb_row et_pb_row_10 ribbon et_clickable']//span/picture/img)[4]    alt
    Log To Console    ${companyTitl1}
    Should Be True    """${companyTitl1}"""=="""Gitlab full"""

    #Close Browser
    Close All Browsers

docker_Social_Media
    Open Browser    ${testUrl}      ${browser}
    Maximize Browser Window

    #   Get and match the count social media connections
    ${runSocialMediaCount}=     Get Element Count    xpath://ul[@class='social-wrap']/li
    Log To Console    ${runSocialMediaCount}
    Should Be True    ${runSocialMediaCount}==${dockerSocialMediaCOunt}

    #   Step 3: Click on Twitter logo
    Click Element    xpath://a[@href='http://twitter.com/docker']

    #   Step 4: Validate twitter url
    ${window}=      Switch Window   locator=new
    ${runTwitterURL}=   Get Location
    Log To Console    ${runTwitterURL}
    Should Be True    """${runTwitterURL}"""=="""${dockerTwitterExpectedURL}"""

    #   Close twitter window and docker application
    Close Window
    Sleep    2
    Close All Browsers