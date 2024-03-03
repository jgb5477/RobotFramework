*** Settings ***
Library     SeleniumLibrary

Suite Setup  log to console     This is SuiteSETUP
Suite Teardown  log to console  This is SuiteTEARDOWN

Test Setup  log to console  This is TestSETUP
Test Teardown  log to console   This is TestTEARDOWN

*** Test Cases ***
LoginPrepaid
    log to console  This is LoginPrepaid
LoginPostpaid
    log to console  This is LoginPostpaid
LoginApp
    log to console  This is LoginApp
