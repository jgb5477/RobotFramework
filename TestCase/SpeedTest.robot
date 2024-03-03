*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
SpeedTesting
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed   3 seconds
    select radio button     Gender  M
    input text  name:FirstName  Jayesh
    input text  name:LastName   Bangad
    input text  name:Email  jgb5477@gmail.com
    input text  name:Password   Jayesh1234
    input text  name:ConfirmPassword    Jayesh1234

    ${speed}=   get selenium speed
    log to console  ${speed}

    Sleep   3
    close browser

*** Keywords ***
