Feature: Notifications
  
Scenario: signups reach minimum
    When I am signed up for a meet
    And the signups for the meet are one less than the minumum
    And someone signs up for the meet
    Then I should get an email that says the meet will happen
    
Scenario: signing up
  When I am on the meet details page for a specific meet
  And I sign up for a meet
  Then I should get an email that says I signed up

Scenario: signups reach minimum - part two
    When the signups for the meet are one less than the minumum
    And I sign up for the meet
    Then I should get an email that says I signed up
    And I should get an email that says the meet will happen
    
Scenario: backing out
  When I am signed up for a meet
  And the meet has exactly the minimum signups
  And Someone backs out of the meet
  Then I should get an email that says the meet is off
