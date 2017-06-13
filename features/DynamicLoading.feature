@dynamic
Feature: Dynamic Loading
  Scenario: select options from dropdown
    Given Move to "dynamic_loading" page
    When Click on start button
    Then "Hello World!" message is displayed