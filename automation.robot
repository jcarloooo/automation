*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${website}    https://www.saucedemo.com/v1/
${driverChome}    Chrome

${username}    //input[@id="user-name"]
${usernameValue}    standard_user

${password}    //input[@id="password"]
${passwordValue}    secret_sauce

${loginBtn}    //input[@class = 'btn_action']

*** Test Cases ***
sample login
    Open Browser    https://www.saucedemo.com/v1/    Chrome
    Maximize Browser Window
    Input Text    //input[@id="user-name"]    standard_user
    Input Password    //input[@id="password"]    secret_sauce
    Click Button    //input[@class = 'btn_action']

sample login 1
    Open Browser    https://www.saucedemo.com/v1/    Chrome
    Maximize Browser Window
    Input Text    //input[@id="user-name"]    standard_user
    Input Password    //input[@id="password"]    secret_sauce
    Click Button    //input[@class = 'btn_action']

   
sample login 2
    Open Browser    ${website}    ${driverChome}
    Maximize Browser Window
    Input Text    ${username}    ${usernameValue}
    Input Password    ${password}     ${passwordValue}
    Click Button    ${loginBtn}
 