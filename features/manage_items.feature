Feature: Item management
  In order to manage all the items
  As a user
  I want to be able to list, create and edit items

  Background:
    Given the following items
     |name|description|sku|
     |Pencil|Pencil that draws|baa343|
     |Pen|Pen that writes|baa344|
     |Eraser|Eraser that erases|baa345|

  Scenario: user visits items listing
    When I go to the items page
    Then I should see listing items tabular attributes with name ascending

  Scenario: user creates item with blank details
    When I go to the items page
    And I follow "New Item"
    Then I should see a form
    When I press "Create"
    Then I should see "Name can't be blank"
    And I should see "Sku can't be blank"
    And I should see "Cost in cents can't be blank"

  Scenario: user creates item
    When I go to the items page
    And I follow "New Item"
    Then I should see a form
    And I fill in "Name" with "Paper"
    And I fill in "Sku" with "pp233"
    And I fill in "Cost in cents" with "120"
    When I press "Create"
    Then I should see "Item was successfully created."

