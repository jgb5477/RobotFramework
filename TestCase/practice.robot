
*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome
${url1}  https://www.google.com/
*** Test Cases ***
regTest
    open browser    ${url}  ${browser}
    maximize browser window
    ${loc}  get title
    log to console  ${loc}

    go to  ${url1}
    ${loc}  get title
    log to console  ${loc}

    go back
    ${loc}  get title
    log to console  ${loc}

    close all browsers
*** Keywords ***
