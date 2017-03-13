Feature: Sign up for a meet
    
    Scenario: Reaching find_meets page
        Given I am on the dashboard page
        When I click the find_meets button
        Then I should be on the find_meets page
        
    Scenario: Signing up for a meet - nav
        Given I am on the find_meets page
        When I click the signup button
        Then I should be on the sign_up page
    
    Scenario: Signing up for a meet - data
        Given I am on the find_meets page
        When I click the signup button
        Then I should see the number of players increase by one
    
    Scenario: Leaving page
        Given I am on the find_meets page
        When I click the dashboard button
        Then I should be on the dashboard page