*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    click element    xpath://*[@id="HTML9"]/div[1]/button
    Sleep   2
    #handle alert    accept
    #handle alert    dismiss
    #handle alert    leave
    alert should be present     Press a button!
    Sleep   4
    close browser

*** Keywords ***
