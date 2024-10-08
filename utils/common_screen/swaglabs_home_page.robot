*** Settings ***
Library    SeleniumLibrary
Resource    ../key_objects.robot
Resource    ../testdata.robot
Resource    ../browser.robot
Resource    ../sleeptimer.robot

*** Keywords ***
validate user is in homepage
    Wait Until Page Contains Element    ${productLbl}    10s

select all item and add to cart
    Click Button    (${productAddToCart})[1]
    sleeptimer.sleeptimer
    Click Button    (${productAddToCart})[1]
    sleeptimer.sleeptimer
    Click Button    (${productAddToCart})[1]
    sleeptimer.sleeptimer
    Click Button    (${productAddToCart})[1]
    sleeptimer.sleeptimer
    Click Button    (${productAddToCart})[1]
    sleeptimer.sleeptimer
    Click Button    (${productAddToCart})[1]
    sleeptimer.sleeptimer

checkout selected items
    Click Link   ${shoppingCartIcon}

    


