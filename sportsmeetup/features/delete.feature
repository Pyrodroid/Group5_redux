Feature: delete a game

Scenario: deleting a game
  When I am on the meet_details page for a particular meet
  And I hit "Delete Meet"
  And I should be back on the "Available Games" page
  And I should see "deleted"
  
Scenario: deleted game notification
  When I am signed up for a meet
  And Someone deletes the meet
  Then I should get an email that says the meet has been deleted