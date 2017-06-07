Feature: Basic Authentication
  This feature test basic http auth
  on the http://the-internet.herokuapp.com/ host

  Scenario: Login with valid credentials
    Given Open a browser
    When Login with "admin" username and "admin" password
    Then Should see the "Congratulations! You must have the proper credentials." message