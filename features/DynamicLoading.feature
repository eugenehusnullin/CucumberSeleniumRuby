@dynamic
Feature: Dynamic Loading
  Scenario Outline:
    Given Move to "dynamic_loading" page "<pages>"
    When Click on start button
    Then "Hello World!" message is displayed

    Examples:
    |pages|
    |/1   |
    |/2   |