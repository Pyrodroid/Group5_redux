module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)

When(/^I am on the meet_details page for a particular$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

