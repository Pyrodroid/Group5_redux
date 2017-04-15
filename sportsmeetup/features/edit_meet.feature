Feature: editing a meet
  
    Scenario: Getting there
       Given I am on the find_meets page
      When I click "Edit Meet"
       Then I should see "Edit Meet:"
    
    Scenario: Good data
      Given I am at the edit meet page
      And I fill "Title" with "New Title" within "form"
      And I click confirm changes
      Then I should see "was successfully updated"
      And I should be back on the list of meets page
      And I should see "New Title"
     
     Scenario: Bad data
      Given I am at the edit meet page
      And I fill "game_max" with "not a number" within "form"
      And I click confirm changes
      Then I should see "Wrong data type!"
      And Still be on the edit meets page
      
    Scenario: No data
      Given I am at the edit meet page
      And I fill "Title" with "" within "form"
      And I click confirm changes
      Then I should still be on the edit meets page

      
