module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)

When(/^I am on the meet_details page for a particular meet$/) do
    visit root_path
    with_scope("table") do
        click_link("More Info", match: :first)
    end
end

When(/^I hit "([^"]*)"$/) do |arg1|
  click_link(arg1, match: :first)
end

When(/^I should be back on the "([^"]*)" page$/) do |arg1|
  expect(page).to have_content(arg1)
  
end

Then(/^I should not see the game I deleted$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^Someone deletes the meet$/) do
      visit root_path
    with_scope("table") do
        click_link("More Info", match: :first)
    end
    click_link("Delete Meet", match: :first)
end

Then(/^I should get an email that says the meet has been deleted$/) do
 email = ActionMailer::Notifier.deliveries.first
 email.body.should include("deleted")
end

