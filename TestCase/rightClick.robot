*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Reg test
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu  xpath:/html/body/div/section/div/div/div/p/span
    sleep   3