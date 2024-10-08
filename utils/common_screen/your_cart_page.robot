*** Settings ***
Library    SeleniumLibrary
Resource    ../key_objects.robot
Resource    ../testdata.robot
Resource    ../browser.robot
Resource    ../sleeptimer.robot

*** Keywords ***
validate user is in your cart
    Wait Until Page Contains    Your Cart

checkout all items
    Scroll Element Into View    ${checkout}
    Click Link    ${checkout}
    
    