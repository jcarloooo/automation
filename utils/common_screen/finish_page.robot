*** Settings ***
Library    SeleniumLibrary
Resource    ../key_objects.robot
Resource    ../testdata.robot
Resource    ../browser.robot
Resource    ../sleeptimer.robot

*** Keywords ***
validate user is in your cart
    Wait Until Page Contains    Finish

validate transaction completed
    Wait Until Page Contains    THANK YOU FOR YOUR ORDER
