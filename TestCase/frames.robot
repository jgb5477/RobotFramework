*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***

*** Test Cases ***
RegTest
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    select frame  packageListFrame
    click link  org.openqa.selenium.chrome
    unselect frame

    select frame    packageFrame
    click link  ChromeDriver
    unselect frame

    select frame  classFrame
    click link  Tree
    unselect frame

    Sleep   3
    close browser
*** Keywords ***
