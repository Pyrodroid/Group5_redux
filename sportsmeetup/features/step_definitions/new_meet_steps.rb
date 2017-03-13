Given /^(?:|I )am on the (.+) page$/ do |page_name|
  visit path_to(page_name)
end
When /^(?:|I )press (.+)$/ do |button|
  click_button(button)
end
Then /^(?:|I )should be on the (.+) page$/ do |page_name|
  visit path_to(page_name)
  #expect(URI.parse(current_url).path).to eq path_to(page_name)
  #expect(page).to have_content("Create a Game")
end
When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end
