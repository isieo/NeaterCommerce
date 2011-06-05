Feature: Create orders via api
  In order to have an external cart
  As an external service
  I want to create orders




  Background:
    Given the following product variants
     |product_id|item_id|master|
     |1|2|1|
     |1|1|0|
     |2|1|1|
    Given the following items
     |id|name|description|sku|
     |1|Pencil|Pencil that draws|baa343|
     |2|Pen|Pen that writes|baa344|
     |3|Eraser|Eraser that erases|baa345|
    Given the following products
     |id|name|description|cents|item_ids|
     |1|Writing Equiptment Set|This package includes a pen and a pencil|1500|1,2|
     |2|Pencil only|This package includes a pen and a pencil|100|1|


  Scenario: Place an order for one product
    Given I sent a valid json order data with one product
    Then I should receive the created order in json

  Scenario: Place an order for multiple products
    Given I sent a valid json order data with two products
    Then I should receive the created order data with two products in json

  Scenario: Complete an order with valid payment
    Given I sent a valid json order data with one product
    Then I should receive the created order in json
    And I send payment details to complete the order
    Then I should receive the updated order in json

  Scenario: Complete an order with invalid payment
    Given I sent a valid json order data with one product
    Then I should receive the created order in json
    And I send payment details to complete the order
    Then I should not receive the updated order in json

