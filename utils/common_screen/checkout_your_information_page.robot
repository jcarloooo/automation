*** Settings ***
Library    SeleniumLibrary
Resource    ../key_objects.robot
Resource    ../testdata.robot
Resource    ../browser.robot
Resource    ../sleeptimer.robot

*** Keywords ***
validate user is in Checkout Your Information
    Wait Until Page Contains    Checkout: Your Information

provide user information
    Input Text    ${fname}    ${userFirstname}
    sleeptimer.sleeptimer
    Input Text    ${lname}    ${userLastname}
    sleeptimer.sleeptimer
    Input Text    ${postalCode}    ${userPostalCode}
    sleeptimer.sleeptimer

click continue button
    Click Button    ${continue}
    