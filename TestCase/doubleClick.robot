*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Test Cases ***
regTest
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    double click element   xpath://*[@id="HTML10"]/div[1]/button
    Sleep  3