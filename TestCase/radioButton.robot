*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${url}  https://demo.guru99.com/test/radio.html
${browser}  chrome

*** Test Cases ***
RadioButton
    open browser    ${url}  ${browser}
    select radio button     webform     Option 1
    select radio button     webform     Option 3
    Sleep   3

    select checkbox     vfb-6-0
    select checkbox     vfb-6-1

    Sleep   3
    unselect checkbox   vfb-6-0
    Sleep   3
    close browser

*** Keywords ***
