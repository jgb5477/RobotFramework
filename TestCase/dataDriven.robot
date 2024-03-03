*** Settings ***
Library     SeleniumLibrary
Resource  ./loginResource.robot
Suite Setup  openMyBrowser
Suite Teardown  closeMyBrowser
Test Template  InputInvalidLogin

*** Test Cases ***      username        password
rightpassWronUser       Merfury             mercury
rightuserWrongPass      Mercury             merfury
wrongpasswronguser      Merfry              merfury
rightpassrightuser      Mercury             Mercury

*** Keywords ***
InputInvalidLogin
    [Arguments]     ${username}    ${password}
    input username  ${username}
    input password  ${password}
    clickLogin
    error message display
