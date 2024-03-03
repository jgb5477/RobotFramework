*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***

LoginTest
    #create webdriver  Chrome  executable_path="/Users/deepintent/PycharmProjects/RFTutorials/SeleniumDirect/chromedriver"
    open browser  ${url}    ${browser}
    logintoApplication
    close browser

*** Keywords ***

logintoApplication
    click link  xpath://a[@class="ico-login"]
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password     Test@123
    click button  xpath://button[.//text() = 'Log in']