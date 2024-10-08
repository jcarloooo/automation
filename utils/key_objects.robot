*** Variables ***

#login page
${useraanameTxt}    //input[@id="user-name"]
${passwordTxt}    //input[@id="password"]
${loginBtn}    //input[@id="login-button"]
${epidSadFaceLbl}    //*[@id="login_button_container"]/div/form/h3

#homepage
${productLbl}    //div[@id="inventory_filter_container"]/div
${productAddToCart}    //div//button[@class='btn_primary btn_inventory']
${shoppingCartIcon}    //a[@href='./cart.html']

#your cart
${checkout}    //a[@href='./checkout-step-one.html']

#Checkout Your information
${fname}    //input[@id="first-name"]
${lname}    //input[@id="last-name"]
${postalCode}    //input[@id="postal-code"]
${continue}    //input[@class='btn_primary cart_button']

#Checkout Overview
${finish}    //a[@href='./checkout-complete.html']
