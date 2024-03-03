*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
RegTest
    ${time}=     get selenium implicit wait
    log to console  ${time}

    open browser    ${url}  ${browser}
    maximize browser window
    set selenium implicit wait  10 seconds

    select radio button     Gender  M
    input text      name:FirstName  Jayesh
    input text      name:LastName   Bangad
    input text      name:Email  jgb5477@gmail.com
    input text      name:Password   Jayesh1234
    input text      name: ConfirmPassword   Jayesh1234

    ${time}=    get selenium implicit wait
    log to console  ${time}


    Sleep   3
    close browser
*** Keywords ***
