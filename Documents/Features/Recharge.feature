Feature: Description

@Tag1 @Tag2


       
       
       
Scenario: Recharge with hard code cash
       Given Recharge screen is launched
       And user search for customer id "100"
       And user have initial "1500" amount 
       When user enters recharge for "100" amount
       And select payment method "Cash"
       And click on submit
       Then recharge should be successful
       And user should have "1600" amount
       
       
       Scenario: Recharge with hard code voucher
       Given Recharge screen is launched
       And user search for customer id "100"
       And user have initial "1500" amount 
       When user enters recharge for "100" amount
       And select payment method "Voucher"
       And enter vouche code "ABC"
       And click on submit
       Then recharge should be successful
       And user should have "1600" amount