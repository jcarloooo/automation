*** Settings ***
Library    SeleniumLibrary
Resource    ../key_objects.robot
Resource    ../testdata.robot
Resource    ../browser.robot
Resource    ../sleeptimer.robot

*** Keywords ***
validate user is in Checkout Overview
    Wait Until Page Contains    Checkout: Overview

finish transaction
    Scroll Element Into View    ${finish}
    sleeptimer.sleeptimer
    Click Link    ${finish}
