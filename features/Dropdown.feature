@dropdown
Feature: Selecting from a Dropdown

  @acceptance
  Scenario Outline: Select option from the dropdown
    Given Move to "dropdown" page
    When Select <option> from the dropdown
    Then Should see the <option> selected

  Examples: any options from dropdown
    | option      |
    | "Option 1"  |
    | "Option 2"  |