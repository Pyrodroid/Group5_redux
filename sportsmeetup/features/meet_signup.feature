Feature: Sign up for a meet
    
    Scenario: Reaching find_meets page
        Given I am on the dashboard page
        When I hit the find_meets button
        Then I should be at find_meets page
        
    
    Scenario: Signing up for a meet - nav
        Given I am on the find_meets page
        And I hit a "More Info" link
        Then I should see "Sign Up"
        And I hit the signup link
        Then I should see the signup form
    
    Scenario: Signing up for a meet - data
        Given I am on the find_meets page
        And I hit a "More Info" link
        Then I should see "Sign Up"
        And I hit the signup link
        Then I should see the signup form
        When I fill "game_full_name" with "Joe" within "form"
        And I fill "game_last_email" with "test@testing.com" within "form"
        And I hit the submit button
        Then I should be on the find_meets page
        
    Scenario: Signing up for a meet - method
      Given there is a meet and the signup method for that meet gets called
      Then that meet's signups should increase by one
    
    Scenario: Signing up for a meet - with password
        Given I am on the find_meets page
        And I hit a "More Info" link for a meet with a password
        Then I should see "Sign Up"
        And I hit the signup link
        Then I should see the signup form with a password field
        When I fill "game_full_name" with "Joe" within "form"
        And I fill "game_last_email" with "test@testing.com" within "form"
        And I fill "game_onestring" with "secret" within "form"
        And I hit the submit button
        Then I should be on the find_meets page
    
    Scenario: Leaving page
        Given I am on the find_meets page
        When I hit the dashboard button
        Then I should be on the dashboard page