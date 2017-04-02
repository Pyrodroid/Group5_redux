Feature: editing a meet
  
    Scenario: Getting there
       Given I am on the find_meets page
      When I click "Edit Meet"
      Then I should be on the edit meet page
       And I should see "Edit Meet:"
    
    Scenario: Good data
      Given I am on the edit meet page
      And I fill in "Title" with "New Title" within "form"
      And I click confirm changes
      Then I should see "was successfully updated"
      And I should be back on the list of meets page
      And I should see "New Title"
     
     Scenario: Bad data
      Given I am on the edit meets page
      And I fill in "game_max" with "not a number" within "form"
      Then I should see Sorry, wrong data type- try again
      And Still be on the edit meets page
      
    Scenario: No data
      Given I am on the edit meets page
      And I make all the fields blank
      And I click confirm changes
      Then I should see Did you mean to delete the meet?
      And I should be back on the list of meets page
      