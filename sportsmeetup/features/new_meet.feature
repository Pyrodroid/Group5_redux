Feature: Propose a new meet
    Scenario: Reaching new_meet page
        Given I am on the dashboard page
        When I press create a meet
        Then I should be on the create a meet page

    Scenario: Fill out the form
        Given I am on the create a meet page
        When I fill in "Title" with "newMeet"
        And I fill in "Sport" with "frisbee"
        And I fill in "Location" with "Palmer Park"
        And I fill in "Time" with "06:00:PM"
        And I fill in "Min" with "0"
        And I fill in "Max" with "10"
        And I fill in "Details" with "nothing"
        And I press submit
        Then I should be on the meet details page

    Scenario: Submitting the form - info needed
        Given I am on the create a meet page
        And I fill in "Sport" with ""
        When I press submit
        Then I should be on the create a meet page

    Scenario: Cancelling the form - actually cancelling
        Given I am on the create a meet page
        When I press cancel
        Then I should be on the dashboard page

Scenario: Create a new meet - with a password
        Given I am on the create a meet page
        When I fill in "Title" with "newMeet"
        And I fill in "Sport" with "frisbee"
        And I fill in "Location" with "Palmer Park"
        And I fill in "Time" with "06:00:PM"
        And I fill in "Min" with "1"
        And I fill in "Max" with "10"
        And I fill in "Password" with "password"
        And I fill in "Password Confirmation" with "password"
        And I press submit
        Then I should be on the meet details page

    Scenario: Create a new meet - without a password
       Given I am on the create a meet page
        When I fill in "Title" with "newMeet"
        And I fill in "Sport" with "frisbee"
        And I fill in "Location" with "Palmer Park"
        And I fill in "Time" with "06:00:PM"
        And I fill in "Min" with "1"
        And I fill in "Max" with "10"
        And I fill in "Password" with ""
        And I fill in "Password Confirmation" with ""
        And I press submit
        Then I should be on the meet details page

Scenario: Create a new meet - don't validate password
       Given I am on the create a meet page
        When I fill in "Title" with "newMeet"
        And I fill in "Sport" with "frisbee"
        And I fill in "Location" with "Palmer Park"
        And I fill in "Time" with "06:00:PM"
        And I fill in "Min" with "1"
        And I fill in "Max" with "10"
        And I fill in "Password" with "password"
        And I fill in "Password Confirmation" with ""
        And I press submit
        Then I should be on the create a meet page

    Scenario: Create a new meet - password and confirmation don't match
        Given I am on the create a meet page
        When I fill in "Title" with "newMeet"
        And I fill in "Sport" with "frisbee"
        And I fill in "Location" with "Palmer Park"
        And I fill in "Time" with "06:00:PM"
        And I fill in "Min" with "1"
        And I fill in "Max" with "10"
        And I fill in "Password" with "password"
        And I fill in "Password Confirmation" with "passord"
        And I press submit
        Then I should be on the create a meet page

