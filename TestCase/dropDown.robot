*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${url}  https://chercher.tech/practice/practice-dropdowns-selenium-webdriver
${browser}  chrome

*** Test Cases ***
DropDownTest
    open browser    ${url}  ${browser}

    select from list by label   first   Google
    Sleep   3
    select from list by index   first   3
    Sleep   3
    select from list by value   first   Yahoo
    Sleep   3

    #multipleListBox

    select from list by label   second  Pizza
    select from list by label   second  Burger

    unselect from list by label     second  Pizza


    Sleep   3
    close browser
*** Keywords ***
