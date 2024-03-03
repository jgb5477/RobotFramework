*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${url}      https://sso-dev.deepintent.com/#/login
${browser}      chrome

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    Sleep       3
    input text      xpath://*[@class="c1135 c1148"]/input       sachin@deepintent.com
    input text      xpath://*[@class="c1135 c1163"]/input   sachin123
    click element   xpath://*[@id="root"]/div/div/div/div/div[2]/div/div[1]/form/div[3]/div/button
    Sleep   5
    click element   xpath://*[@id="root"]/div/div/div/div/div[2]/div/div/section/a[3]
    Sleep   3
    click element   xpath://*[@class="c1142"]
    input text      xpath://*[@id="root"]/div[1]/div[3]/div/div[2]/div/div/div[1]/input     Zejula
    Sleep   3
    click element   xpath://*[@id="root"]/div[1]/div[3]/div/div[2]/div/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[2]/span
    Sleep   3
    click element   xpath://*[@id="root"]/div[2]/div/div/div/div[1]/div/div/div/div/div[1]/div[1]/div[2]/a/div/svg
    Sleep   3
    click element   xpath://*[@id="root"]/div[2]/div/div/div/div[2]/div/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/div/span/div/svg
    Sleep   3
    click element   xpath://*[@id="root"]/div[2]/div/div/div/div[2]/div/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/div[2]/div/div[2]/div
*** Keywords ***
