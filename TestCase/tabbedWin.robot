*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***

*** Test Cases ***
RegTest
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element   xpath://*[@id="Tabbed"]/a/button
    switch window   title=Selenium
    click element   xpath://*[@id="main_navbar"]/ul/li[5]/a

    Sleep  3
    close all browsers

*** Keywords ***
