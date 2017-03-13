When(/^I hit the find_meets button$/) do 
  click_button("Find A Meet")
end

Then /^(?:|I )should be at (.+) page$/ do |page_name|
  visit path_to(page_name)
end

When(/^I hit the signup button$/) do
      visit edit_game_path(1)
end


Then(/^I should see the number of players increase by one$/) do
      pending # Write code here that turns the phrase above into concrete actions
end


When(/^I hit the dashboard button$/) do
  visit root_path
end