*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
*** Variables ***

*** Test Cases ***
RegTest
    open browser    https://www.google.com/     chrome
    maximize browser window

    open browser    https://www.amazon.in/      chrome
    maximize browser window

    switch browser  1
    ${title1}=   get title
    log to console  ${title1}

    switch browser  2
    ${title2}=  get title
    log to console  ${title2}

    Sleep   3
    close all browsers

*** Keywords ***
