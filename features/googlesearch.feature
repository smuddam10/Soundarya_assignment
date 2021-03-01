Feature: Google  Search functionality


  Scenario: searching ducks on Google
    Given a user goes to Google home page
    When a user search for "ducks."
    Then google should return result for "ducks."
