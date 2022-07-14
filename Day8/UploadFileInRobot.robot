*** Settings ***
Library    SeleniumLibrary
Library    ../Reusebale/Reusable.py
*** Variables ***
#   This is for Testing Branch1git status
*** Test Cases ***

SS:01
        Open Browser        https://the-internet.herokuapp.com/upload       Chrome
        Maximize Browser Window

        #   Upload file
        #   D:\PythonExcersiseFiles\Day1PythonProgramming\selenium-screenshot-1.png
        ${fileName}     Reusable.myImagePath        selenium-screenshot-1.png
        Choose File    file-upload    ${fileName}
        Sleep   2


        #Close all browsers
        Close All Browsers



*** Keywords ***

