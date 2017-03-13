When(/^I click the find_meets button$/) do 
  click_button("Find A Meet")
end


When(/^I click the signup button$/) do
      visit edit_game_path(1)
end


Then(/^I should see the number of players increase by one$/) do
      pending # Write code here that turns the phrase above into concrete actions
end


When(/^I click the dashboard button$/) do
  visit root_path
end