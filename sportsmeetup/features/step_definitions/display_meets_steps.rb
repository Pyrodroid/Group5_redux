Given(/^I'm on the dashboard$/) do
  '/'
end
When(/^I click on the Find a Meet button$/) do
  '/games'
end
Then(/^I should see a table with the meet names$/) do
  
end
Then(/^the meet times$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
Then(/^the meet places$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
Then(/^the number of players signed up$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
Then(/^the minimum and maximum number of players$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
Then(/^a More Info button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
Then(/^a Sign Up button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Given(/^I'm on the Find a Meet page$/) do
  '/games'
end
When(/^I click on the More Info button$/) do
  visit '/games'
  save_and_open_page
  click_link('More Info')
end
Then(/^I should be taken to the meet details page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end