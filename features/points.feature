Feature: Points for Hilton Honors

  In order to have Points on Hilton Honors
  As a user of the Hilton Honors site
  I want to be able to use the Points feature on the site

  Scenario: Credit Card offers are available
    Given I am on the Points page
    When I am at the credit card section
    Then I will see the default credit card offers exist

  Scenario: Credit Card offer Rates and Fees are available
    Given I am on the Points page
    And I am at the credit card section
    When I check all default credit card offer rates and fees
    Then I will see all rates and fees exist