*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Test Cases ***
RegTest
    open browser    https://demo.guru99.com/test/newtours/      chrome
    maximize browser window
    ${countLink}=    get element count   xpath://a
    log to console      ${countLink}

    FOR  ${i}   IN RANGE    1     ${countLink}
        ${linkText}=    get text    xpath:(//a)[${i}]
        log to console  ${linkText}
    END