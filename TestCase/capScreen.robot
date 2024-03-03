*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Test Cases ***
RegTest
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window

    input text  id:txtUsername      jgb5477@gmail.com
    input text  id:txtPassword      Jayesh1234

    capture element screenshot  xpath://*[@id="divLogo"]/img    down.png
    capture page screenshot    home.png

    Sleep   3
    close browser