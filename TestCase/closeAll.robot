*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Test Cases ***
regTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    http://www.google.com/  chrome
    maximize browser window

    close all browsers

*** Keywords ***
