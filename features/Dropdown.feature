@dropdown
Feature: Selecting from a Dropdown

  @acceptance
  Scenario Outline: Select option from the dropdown
    Given Move to <Page> page
    When Select <Select_item> from the dropdown
    Then Should see the <Expected_item> selected

  Examples: Try for Option 1 and 2
    | Page        | Select_item   | Expected_item |
    | "dropdown"  | "Option 1"    | "Option 1"    |
    | "dropdown"  | "Option 2"    | "Option 2"    |