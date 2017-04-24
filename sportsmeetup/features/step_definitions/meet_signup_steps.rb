When(/^I hit the find_meets button$/) do 
  click_button("Find A Meet")
end

Given(/^I hit a "([^"]*)" link$/) do |arg1|
  with_scope("table") do
        click_link(arg1, match: :first)
    end
end

Given(/^I hit a "([^"]*)" link for a meet with a password$/) do |arg1|
   page.all('a', :text => "#{arg1}")[2.to_i - 1].click    
end

Then (/^(?:|I )should be at (.+) page$/) do |page_name|
  visit path_to(page_name)
end

When(/^I hit the signup link$/) do
  click_link("Sign Up", match: :first)
end


Then(/^I should see the signup form$/) do
  expect(page).to have_content("Sign Up")
  expect(page).to have_content("Your email")
end

Then(/^I should see the signup form with a password field$/) do
  expect(page).to have_content("Sign Up")
  expect(page).to have_content("Your email")
  expect(page).to have_content("Password")
end

When(/^I hit the dashboard button$/) do
  visit root_path
end

When(/^Enter an email in the signup form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I hit the submit button$/) do
    click_button("Sign Up")
end

Then(/^The number of signups should increase by one$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When (/^I hit "more details" within "table"$/) do
  #visit meet_details_path(2)
end

Given(/^there is a meet and the signup method for that meet gets called$/) do
  game = FactoryGirl.create(:game, sign_ups: 3)
  Game.sign_up(game, "New Joe", "new@email.com")
    expect(game.sign_ups).to equal(4)
end


Then(/^that meet's signups should increase by one$/) do
end