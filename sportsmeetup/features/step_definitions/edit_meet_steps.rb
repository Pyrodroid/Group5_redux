module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)
Given(/^I am at the edit meet page$/) do
      visit root_path
      with_scope("table") do
        click_link('More Info', match: :first)
    end
    click_link('Edit Meet', match: :first)
end

When(/^I click "Edit Meet"$/) do
    with_scope("table") do
        click_link('More Info', match: :first)
    end
    click_link('Edit Meet', match: :first)
end

When (/^(?:|I )follow "([^\"]*)"$/) do |link|
  click_link(link)
end
 
 Then (/^(?:|I )should see "([^"]*)"$/) do |text|
   expect(page).to have_content(text)
 end
 
When (/^(?:|I )fill "([^"]*)" with "([^"]*)"(?: within "([^"]*)")?$/) do |field, value, selector|
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
 
 Then(/^Still be on the edit meets page$/) do
      expect(page).to have_content("Edit Meet")
 end
 
 Given(/^I make required fields blank$/) do
   with_scope("form") do
    fill_in "Title", :with =>""
    fill_in("Sport", :with => nil)
    fill_in("Location", :with => nil)
  end
 end

Then(/^I should still be on the edit meets page$/) do
      expect(page).to have_content("Meet")
end
