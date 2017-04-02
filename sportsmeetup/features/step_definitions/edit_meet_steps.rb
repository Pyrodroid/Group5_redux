
module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)


When(/^I click "Edit Meet"$/) do
 visit edit_meet_path(6)
end

When (/^(?:|I )follow "([^\"]*)"$/) do |link|
  click_link(link)
end
 
 Then (/^(?:|I )should see "([^"]*)"$/) do |text|
   expect(page).to have_content(text)
 end
 
When (/^(?:|I )fill in "([^"]*)" with "([^"]*)"(?: within "([^"]*)")?$/) do |field, value, selector|
  with_scope(selector) do
    fill_in(field, :with => value)
  end
end
 
 Given(/^I click confirm changes$/) do
  click_button("Confirm Changes")
 end
 
 
 Then(/^I should be back on the list of meets page$/) do
      expect(page).to have_content("Available Games")
 end
 
 Then(/^I should see my new data$/) do
      expect(page).to have_content("New Title")
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
