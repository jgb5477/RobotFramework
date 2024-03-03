*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}  chrome

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    #execute javascript  window.scrollTo(0,1500)
    #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[71]/td[2]
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep   5
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)