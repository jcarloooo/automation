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

#Test Scenario
#swaglabs test case 001
#swaglabs login -> Homepage dashboard 
Login to swaglabs homepage
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
    

    sleeptimer.sleeptimer
    browser.End web test


    