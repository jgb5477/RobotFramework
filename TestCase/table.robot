*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Test Cases ***
RegTest
    open browser   https://testautomationpractice.blogspot.com/     chrome
    ${rows}=    get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=    get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th

    log to console  ${rows}
    log to console  ${cols}

    FOR     ${x}    IN RANGE        2   ${rows+1}
        FOR     ${y}    IN RANGE    1   ${cols+1}
            ${data}=    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[${x}]/td[${y}]
            log to console  ${data}
        END
        log to console  ${\n}
    END

    table column should contain     xpath://table[@name="BookTable"]    2   Author
    table row should contain    xpath://table[@name="BookTable"]    4   Learn JS
    table cell should contain   xpath://table[@name="BookTable"]    5   2   Mukesh