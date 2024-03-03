*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  chrome

*** Keywords ***
openMyBrowser
    open browser    ${url}  ${browser}
    maximize browser window

closeMyBrowser
    close all browsers

open login Page
    go to   ${url}

input username
    [Arguments]  ${username}
    input text  name:userName   ${username}
input password
    [arguments]  ${password}
    input text  name:password    ${password}
clickLogin
    click element   name:submit

error message display
    page should contain     sign-in here

success message display
    page should contain     Login Successful.


