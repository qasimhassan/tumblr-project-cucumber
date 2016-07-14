@create_post
Feature: Creating a new Tumblr text post

Background: Creating a new text post using data
  Given I am on the Tumblr dashboard page

  Scenario:
    Then I should click on the new text post button
    And enter a title for my new post
    And some body text for my new post
    Then click the post button
