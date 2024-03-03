*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
LoginTest
    ${Page_Title}=       LoginTesting    ${url}  ${browser}
    log to console  ${Page_Title}
    log     ${Page_Title}
    input text      name:userName     mercury
    input text      name:password     mercury

*** Keywords ***
LoginTesting
    [Arguments]  ${appUrl}  ${appBrowser}
    open browser     ${appUrl}  ${appBrowser}
    maximize browser window
    ${PageTitle}=  get title
    [return]  ${PageTitle}


