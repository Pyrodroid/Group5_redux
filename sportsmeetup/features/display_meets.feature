Feature: Display meets
  
    Scenario: Coming to the meets page
        Given I'm on the dashboard
        When I click on the Find a Meet button
        Then I should see a table with the meet names
        And the meet times
        And the meet places
        And the number of players signed up
        And the minimum and maximum number of players
        And a More Info button
        And a Sign Up button
        
    Scenario: Selecting a meet
        Given I'm on the Find a Meet page
        When I click on the More Info button
        Then I should be taken to the meet details page