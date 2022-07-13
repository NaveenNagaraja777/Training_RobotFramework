*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***

verify_google_app

    Open Browser    https://www.google.com  chrome
    Maximize Browser Window
    Close All Browsers