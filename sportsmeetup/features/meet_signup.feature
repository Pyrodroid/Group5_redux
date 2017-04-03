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
        Given I should be on the sign_up page
        When I fill "game_last_email" with "test@testing.com" within "form"
        And I hit the submit button
        Then I should be on the find_meets page
    
    Scenario: Leaving page
        Given I am on the find_meets page
        When I hit the dashboard button
        Then I should be on the dashboard page