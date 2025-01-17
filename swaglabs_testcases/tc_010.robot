*** Settings ***
Library    SeleniumLibrary
Resource    ../../automation/utils/key_objects.robot
Resource    ../../automation/utils/testdata.robot
Resource    ../../automation/utils/browser.robot
Resource    ../../automation/utils/sleeptimer.robot
Resource    ../../automation/utils/common_screen/swaglabs_login_page.robot
Resource    ../../automation/utils/common_screen/swaglabs_home_page.robot
Resource    ../../automation/utils/common_screen/your_cart_page.robot
Resource    ../../automation/utils/common_screen/checkout_your_information_page.robot
Resource    ../../automation/utils/common_screen/checkout_overview_page.robot
Resource    ../../automation/utils/common_screen/finish_page.robot

*** Test Cases ***
Regression Login to checkout all items
    browser.Begin web test
    Maximize Browser Window
    swaglabs_login_page.validate user is in login page
    swaglabs_login_page.validate username text field is present
    swaglabs_login_page.validate password field is present
    swaglabs_login_page.enter username
    sleeptimer.sleeptimer
    swaglabs_login_page.enter password
    sleeptimer.sleeptimer
    swaglabs_login_page.click login button
    sleeptimer.sleeptimer
    swaglabs_home_page.validate user is in homepage
    swaglabs_home_page.select all item and add to cart
    swaglabs_home_page.checkout selected items
    sleeptimer.sleeptimer
    your_cart_page.validate user is in your cart 
    your_cart_page.checkout all items
    sleeptimer.sleeptimer
    checkout_your_information_page.validate user is in Checkout Your Information
    checkout_your_information_page.provide user information
    checkout_your_information_page.click continue button
    checkout_overview_page.validate user is in Checkout Overview
    checkout_overview_page.finish transaction
    finish_page.validate user is in your cart
    finish_page.validate transaction completed

    sleeptimer.sleeptimer
    browser.End web test


    