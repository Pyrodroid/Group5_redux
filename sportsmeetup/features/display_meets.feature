Feature: Display meets
  
    Scenario: Coming to the meets page
        Given the page I am on is dashboard
        When I click the find a meet button
        Then I should see a table with the meet names
        And the meet location
        And the meet times
        And the minimum number of players required
        And the maximum number of players
        And the number of players signed up
        And a More Info button
        
    Scenario: Selecting a meet
        Given the page I am on is find a meet
        When I click the More Info link
        Then I  should be on the meet details page