@login
Feature: Tumblr website login

Background: Navigating to the Tumblr login page and loading login credentials
  Given I am on the tumblr website login page

  Scenario: Setting valid login credentials and logging in
    Then I should put the email address in the email text field
    And Click the next button
    Then I should put the password in the password text field
    And Click the login button
