module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)

When(/^I am signed up for a meet$/) do
  with_scope("form") do
    fill_in("Your Email", :with => "testing@test.com")
  end
end

When(/^the signups for the meet are one less than the minumum$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^someone signs up for the meet$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should get an email that says the meet will happen$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I am on the meet details page for a specific meet$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I sign up for a meet$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should get an email that says I signed up$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I sign up for the meet$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^the meet has exactly the minimum signups$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^Someone backs out of the meet$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should get an email that says the meet is off$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
