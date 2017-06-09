@dropdown
Feature: Selecting from a Dropdown

  @acceptance
  Scenario: Select option one from the dropdown
    Given Move to "dropdown" page
    When Select "Option 1" from the dropdown
    Then Should see the "Option 1" selected

  @acceptance
  Scenario: Select option two from the dropdown
    Given Move to "dropdown" page
    When Select "Option 2" from the dropdown
    Then Should see the "Option 2" selected