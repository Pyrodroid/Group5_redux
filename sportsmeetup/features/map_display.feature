Feature: Display meets
  
    Scenario: Opening meets page displays map
        Given I click on a link to the meets page
        When it loads
        Then I should see a map
        
        
    Scenario: I refresh the meets page
        When I refresh the meets page
        Then I should see a map