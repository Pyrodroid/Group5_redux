Feature: Display meets
  
    Scenario: Coming to the meets page
        Given I click on a link to the meets page
        When it loads
        Then I should see a table with the meet names
        And the meet times
        And the meet places
        And the number of players signed up
        And the minimum and maximum number of players
        And sign up buttons
        
    Scenario: Selecting a meet
        Given I'm looking at the meets table
        When I click on the meet name
        Then I should be taken to the meet details page
        
    Scenario: Signing up for a meet thats not full
        Given I'm looking at the meets table
        When I click on the sign up button
        And then meet is not full
        Then then number of players signed up should increase by one
        And I should be added to the player list
        
    Scenario: Signing up for a meet thas full
        Given I'm looking at the meets table
        When I click on the sign up button
        And The meet is full
        Then I should see a sorry_meet_full message