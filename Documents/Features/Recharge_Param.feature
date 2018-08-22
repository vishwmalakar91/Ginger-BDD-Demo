
Feature: Description

  @Tag1 @Tag2

  Scenario Outline:  Recharge with hard code cash
    Given Recharge screen is launched
    And user search for customer id <customer_id>
    And user have initial <initial_amount> amount
    When user enters recharge for <recharge_amount> amount
    And select payment method <payment_method>
    And click on submit
    Then recharge should be successful
    And user should have <final_amoumnt> amount


    Examples:
      | customer_id | initial_amount | recharge_amount | payment_method | final_amoumnt |
      | 100         | 1500           | 100             | Cash           | 1600          |
      | 100         | 1500           | 500             | Credit Card    | 2000          |


  Scenario Outline: Recharge with hard code voucher
    Given Recharge screen is launched
    And user search for customer id <customer_id>
    And user have initial <initial_amount> amount
    When user enters recharge for <recharge_amount> amount
    And select payment method <payment_method>
    And enter vouche code <voucher_code>
    And click on submit
    Then recharge should be successful
    And user should have <final_amoumnt> amount

    Examples:
      | customer_id | initial_amount | recharge_amount | payment_method | voucher_code | final_amoumnt |
      | 100         | 1500           | 100             | Voucher        | ABC          | 1600          |
      | 100         | 1500           | 400             | Check          | ABC          | 1900          |

