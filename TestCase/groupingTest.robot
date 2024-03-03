*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 UserRegistration
    [tags]  Sanity
    log to console  This is TestCase1
TC2 Login
    [tags]  Regression
    log to console  This is TestCase2
TC3 Home
    [tags]  Regression
    log to console  This is TestCase3
TC4 Logout
    [tags]  Regression
    log to console  This is TestCase4
TC4 CloseBrowser
     [tags]  Sanity
    log to console  This is  TestCase5