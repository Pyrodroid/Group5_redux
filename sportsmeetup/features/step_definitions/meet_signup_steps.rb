When(/^I hit the find_meets button$/) do 
  click_button("Find A Meet")
end

Then /^(?:|I )should be at (.+) page$/ do |page_name|
  visit path_to(page_name)
end

When(/^I hit the signup button$/) do
      visit edit_game_path(2)
end


Then(/^I should see the signup form$/) do
  expect(page).to have_content("Sign Up:")
  expect(page).to have_content("Your email")
end


When(/^I hit the dashboard button$/) do
  visit root_path
end

When(/^Enter an email in the signup form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I hit the submit button$/) do
    click_button("Save Game")
end

Then(/^The number of signups should increase by one$/) do
  pending # Write code here that turns the phrase above into concrete actions
end