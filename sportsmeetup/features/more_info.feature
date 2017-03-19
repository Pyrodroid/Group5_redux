Feature: More Info
  
    Scenario: Selecting a meet
        Given the page I am on is find a meet
        When I click the More Info link
        Then I should be on the meet details page
        And I should see the meet name
        And the meet location
        And the meet time
        And the minimum number of players required
        And the maximum number of players
        And the number of players signed up
        And a Sign Up button
        And a Back Out button
        And an Edit Meet button
        And a map of the location
  
    Scenario: Signing up for a meet
        Given I am on the More Info page
        When I hit the Sign Up button
        Then I should be on the Sign Up page
        
    Scenario: Back out from meet
        Given I am on the More Info page
        When I click the Back Out button
        Then I should be on the Back Out page
        
    Scenario: Edit meet
        Given I am on the More Info page
        When I click the Edit Meet button
        Then I should be on the Edit Meet page

        
    