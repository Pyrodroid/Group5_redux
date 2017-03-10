Feature: Sign up for a meet
    
    Scenario: Reaching find_meets page
        Given I am on the dashboard page
        When I click the find meets button
        Then I should be on the find meets page
        
    Scenario: Signing up for a meet - message
        Given A meet exists
        And I am on the find_meets page
        And The meet is not full
        When I click the signup button next to the meet I want
        Then I should see a you_signed_up message
    
    Scenario: No meets exist
        Given A meet does not exist
        When I am on the find_meet page
        Then I should see a no_meets message
    
    Scenario: Signing up for a meet - data
        Given A meet exists
        And I am on the find_meets page
        And The meet is not full
        When I fill in the information
        And Click the signup button
        Then I should see the number of players increase by one
        
    Scenario: Signing up for a meet - cap
        Given A meet exists
        And I am on the find_meets page
        And The meet is full
        When I fill in the information
        And Click the signup button
        Then I should see a sorry_meet_full message
    
    Scenario: Signing up for a meet - info
        Given A meet exists
        And I am on the find_meets page
        And The meet is not full
        When I leave some of the required info blank
        And Click the signup button
        Then I should see an info_needed message
    
    Scenario: Leaving page
        Given I am on the find_meets page
        When I click the dashboard button
        Then I should be on the dashboard page