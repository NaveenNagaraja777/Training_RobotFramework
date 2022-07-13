*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

SS:01
        Open Browser        https://testautomationpractice.blogspot.com/       Chrome
        Maximize Browser Window

        #   Handle HTML table by Robot
            # Table Row Count
        ${tableRow}     Get Element Count    //table[@name='BookTable']/tbody/tr
        Log To Console    ${tableRow}

            # Table Column Count
        ${tableColumn}  Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th
        Log To Console    ${tableColumn}

            # Read table Data 1 by 1
        ${tableData1}  Get Text    //table[@name='BookTable']/tbody/tr[1]/th[1]
        Log To Console    ${tableData1}
        ${tableData2}  Get Text    //table[@name='BookTable']/tbody/tr[1]/th[2]
        Log To Console    ${tableData2}
        ${tableData3}  Get Text    //table[@name='BookTable']/tbody/tr[1]/th[3]
        Log To Console    ${tableData3}
        ${tableData4}  Get Text    //table[@name='BookTable']/tbody/tr[1]/th[4]
        Log To Console    ${tableData4}

        #   Validate perticular value in the table based on column

        Table Column Should Contain    //table[@name='BookTable']    4    2000
        Table Column Should Contain    //table[@name='BookTable']    1    Learn Java
        Table Column Should Contain    //table[@name='BookTable']    2    Amit
        Table Column Should Contain    //table[@name='BookTable']    3    Java

        #   Validate perticular value in the table based on ro

        Table Row Should Contain    //table[@name='BookTable']    2    300
        Table Row Should Contain    //table[@name='BookTable']    5    Mukesh
        Table Row Should Contain    //table[@name='BookTable']    4    Learn JS
        Table Row Should Contain    //table[@name='BookTable']    3    Java

        #   Verify perticular value in specific row and column
        Table Cell Should Contain    //table[@name='BookTable']    3    4    500

        #   Verify header in the table
        Table Header Should Contain    //table[@name='BookTable']    Author


        #Close all browsers
        Close All Browsers



*** Keywords ***

