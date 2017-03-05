Feature: Propose a new meet
    Scenario: Reaching new_meet page
        Given I am on the dashboard page
        When I click the create a meet button
        Then I should be on the create a meet page

    Scenario: See the form
        Given I am on the create a meet page
        When it loads
        Then I should see the option to be in a league
        And an input box for the date
        And an input box for the time
        And an input box for the minimum number of players
        And an input box for the maximum number of players
        And an input box for details
        And a submit button
        And a cancel button

    Scenario: Submitting the form - happy
        Given I am on the create a meet page
        And I fill out all of the required information
        When I click the submit button
        Then I should see a submission_received message
        And I should return to the dashboard
        And A new meet should be added to the database

    Scenario: Submitting the form - info needed
        Given I am on the create a meet page
        And I leave some of the required infor blank
        When I click the submit button
        Then I should see an info_needed message

    Scenario: Cancelling the form - dialogue
        Given I am on the create a meet page
        When I click the cancel button
        Then I should get an Are you sure? message

    Scenario: Not cancelling the form
        Given I am on the create a meet page
        And I clicked the cancel button
        And An Are you sure? Message appeared
        When I click no
        Then I should return to the form
        And The filled in information should still be there

    Scenario: Cancelling the form - actually cancelling
        Given I am on the creaet a meet page
        And I clicked the cancel button
        And An Are you sure? message appeared
        When I click yes
        Then I should return to the dashboard
        And A new meet should not be created
