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
#Then /^(?:|I )should see "([^"]*)"$/ do |text|
#  if page.respond_to? :should
#    page.should have_content(text)
#  else
#    assert page.has_content?(text)
#  end
#end
When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end
Then(/^I should see Title$/) do
     page.should have_content("Title")
end
