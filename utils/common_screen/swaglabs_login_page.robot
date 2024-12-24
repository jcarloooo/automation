*** Settings ***
Library    SeleniumLibrary
Resource    ../key_objects.robot
Resource    ../testdata.robot
Resource    ../browser.robot

*** Variables ***
${webPage}    https://www.saucedemo.com/v1/
${driverChrome}    Chrome

*** Keywords ***
login user valid credentials
    browser.Begin web test
    Maximize Browser Window
    Wait Until Page Contains Element    ${useraanameTxt}    30s
    Input Text    ${useraanameTxt}    ${username}
    Input Password    ${passwordTxt}    ${password}
    Click Button    ${loginBtn}
    Wait Until Page Contains Element    ${productLbl}    30s

validate user is in login page
     Wait Until Page Contains Element    ${useraanameTxt}    30s

validate username text field is present
    Wait Until Page Contains Element    ${useraanameTxt}    30s

validate password field is present
    Wait Until Page Contains Element    ${passwordTxt}    30s

enter username
     Input Text    ${useraanameTxt}    ${username}

enter password
    Input Password    ${passwordTxt}    ${password}

click login button
    Click Button    ${loginBtn}