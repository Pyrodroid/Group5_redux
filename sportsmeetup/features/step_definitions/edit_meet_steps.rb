When(/^I click "Edit Meet"$/) do
 visit edit_meet_path(6)
end

When (/^(?:|I )follow "([^\"]*)"$/) do |link|
  click_link(link)
end
 
 Then (/^(?:|I )should see "([^"]*)"$/) do |text|
   expect(page).to have_content(text)
 end
 
 Given(/^(?:|I )write "([^"]*)" in the ([^"]*) field$/) do |value, field|
        fill_in(field, :with => value) do
        end
 end
 
 Given(/^I click confirm changes$/) do
  pending # Write code here that turns the phrase above into concrete actions
 end
 
 
 Then(/^I should be back on the list of meets page$/) do
   pending # Write code here that turns the phrase above into concrete actions
 end
 
 Then(/^I should see my new data$/) do
   pending # Write code here that turns the phrase above into concrete actions
 end
 
 Given(/^I enter data of the wrong type$/) do
   pending # Write code here that turns the phrase above into concrete actions
 end
 
 Then(/^I should see Sorry, wrong data type\- try again$/) do
   pending # Write code here that turns the phrase above into concrete actions
 end
 
 Then(/^Still be on the edit meets page$/) do
   pending # Write code here that turns the phrase above into concrete actions
 end
 
 Given(/^I make all the fields blank$/) do
   pending # Write code here that turns the phrase above into concrete actions
 end
 
 Then(/^I should see Did you mean to delete the meet\?$/) do
   pending # Write code here that turns the phrase above into concrete actions
 end
