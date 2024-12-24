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

#Dashboard
${productsLbl}    //div[@class='product_label']

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
    Wait Until Page Contains Element     //input[@id="user-name"]    10s
    Input Text    //input[@id="user-name"]    standard_user
    Input Password    //input[@id="password"]    secret_sauce
    Click Button    //input[@class = 'btn_action']
    Wait Until Page Contains    Products


   
sample login 2
    Open Browser    ${website}    ${driverChome}
    Maximize Browser Window
    Wait Until Page Contains Element    ${username}    10s
    Wait Until Page Contains Element    ${password}
    Wait Until Page Contains Element    ${loginBtn}
    Input Text    ${username}    ${usernameValue}
    Sleep    10s
    Input Password    ${password}     ${passwordValue}
    Click Button    ${loginBtn}
    Wait Until Page Contains    Products
    Wait Until Page Contains Element    ${productsLbl}
 