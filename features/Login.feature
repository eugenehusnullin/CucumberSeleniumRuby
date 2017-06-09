@login
Feature: Basic Authentication
  This feature test basic http auth
  on the http://the-internet.herokuapp.com/ host

  @acceptance
  Scenario: Login with valid credentials
    Given Login with "admin" username and "admin" password
    Then Should see the "Congratulations! You must have the proper credentials." message