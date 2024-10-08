*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${webPage}    https://www.saucedemo.com/v1/
${driverChrome}    Chrome

*** Keywords ***
Begin web test
    Open Browser    ${webPage}    ${driverChrome}

End web test
    Close All Browsers