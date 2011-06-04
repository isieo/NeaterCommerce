Feature: Manage products
  In order to Manage Products
  As a user
  I want to be able to create, archive and edit products

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


  Scenario: listing all product
    When I am on the products page
    Then I should see listing products tabular attributes with name ascending
    And I should see "Writing Equiptment Set"

  Scenario: user creates product with blank details
    When I go to the products page
    And I follow "New Product"
    Then I should see a form
    When I press "Create"
    Then I should see "Name can't be blank"
    And I should see "Cents can't be blank"
    And I should see "Description can't be blank"
    And I should see "A Product must have at least one item"
    And I should not see "Product was successfully created."

  Scenario: user creates product without specifying items
    When I go to the products page
    And I follow "New Product"
    Then I should see a form
    And I should see "Pencil"
    And I should see "Pen"
    And I should see "Eraser"
    And I fill in "Name" with "All"
    And I fill in "Description" with "All in one"
    And I fill in "Cents" with "1900"
    When I press "Create"
    And I should see "A Product must have at least one item"

  Scenario: user creates valid product
    When I go to the products page
    And I follow "New Product"
    Then I should see a form
    And I should see "Pencil"
    And I should see "Pen"
    And I should see "Eraser"
    And I fill in "Name" with "All"
    And I fill in "Description" with "All in one"
    And I fill in "Cents" with "1900"
    And I select "Pencil" from "Items"
    And I select "Pen" from "Items"
    And I select "Eraser" from "Items"
    When I press "Create"
    Then I should see "Product was successfully created."

  Scenario: user edits a product
    When I go to the products page
    And I click first edit link
    Then I should see a form
    And I should see "This package includes a pen and a pencil"
    And I fill in "Description" with "I have edited the set"
    When I press "Update"
    Then I should see "Product was successfully updated."
    And I should not see "This package includes a pen and a pencil"
    And I should see "I have edited the set"
    When I go to the products page
    And I should see "I have edited the set"

