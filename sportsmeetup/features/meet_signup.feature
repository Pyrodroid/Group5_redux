Feature: Sign up for a meet
    
    Scenario: Reaching find_meets page
        Given I am on the dashboard page
        When I hit the find_meets button
        Then I should be at find_meets page
        
    Scenario: Signing up for a meet - nav
        Given I am on the find_meets page
        When I hit the signup button
        Then I should be on the sign_up page
    
    Scenario: Signing up for a meet - more nav
        Given I am on the find_meets page
        When I hit the signup button
        Then I should see the signup form
    
    Scenario: Signing up for a meet - data
        When Enter an email in the signup form
        And I hit the submit button
        Then The number of signups should increase by one
    
    Scenario: Leaving page
        Given I am on the find_meets page
        When I hit the dashboard button
        Then I should be on the dashboard page