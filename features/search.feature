Feature: Ability to search the Hilton Honors Site

  In order to find my Hilton Honors hotel visit 
  As a user of Hilton Honors
  I want to be able to use the search capability on Hilton Honors

  Scenario: Search for a trip (7 days)
    Given I am at the Hilton Honors main page
    When I search for a week long trip to a popular destination
    Then I should see results for the popular destination