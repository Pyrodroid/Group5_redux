Feature: delete a game

Scenario: deleting a game
  When I am on the meet_details page for a particular meet_details
  And I click "delete game"
  Then I should be on the "confirm" page for that meet
  And I should see "Are you sure?"
  Then I click "yes"
  And I should be on the "find_meet" page
  And I should not see the game I deleted
  
Scenario: deleted game notification
  When I am signed up for a meet
  And Someone deletes the meet
  Then I should get an email that says the meet has been deleted