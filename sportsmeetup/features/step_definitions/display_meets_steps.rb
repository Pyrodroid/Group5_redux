Given /^the page I am on is (.+)$/ do |page_name|
  visit path_to(page_name)
end


When /^(?:|I )click the (.+) button$/ do |button|
  click_button(button)
end
Then(/^I should see a table with the meet names$/) do
  page.has_text?('Title')
end
Then(/^the meet location$/) do
  page.has_text?('Location')
end
Then(/^the meet times$/) do
  page.has_text?('Time')
end
Then(/^the minimum number of players required$/) do
  page.has_text?('Min')
end
Then(/^the maximum number of players$/) do
  page.has_text?('Max')
end
Then(/^the number of players signed up$/) do
  page.has_text?('Signed Up')
end
Then(/^a More Info button$/) do
  page.has_text?('More Info')
end


When /^(?:|I )click the (.+) link$/ do |link|
#When /^(?:|I )click the "([^"]*)" link$/ do |link|
  #click_link(link)
  #td = page.all('#games td')
  #expect(td).to have_link(link)
  #click_link(link)
  #expect(page).to have_link("More Info")
  #find(:xpath, "//tr[td[contains(.,'Fencing')]]/td/a", :text => link).click
  #find('td', id: 'games')#.click_link("Delete")
  #page.all('More Info').click_link(link)
  #table = find('table', id: 'games') do
  #  find('tr', id: 'game')
  #end
#  table = find('table', id: 'games')
#  table.each do |row|
#    within(row) do
#      find('td', id: 'link')
#    end
#  end
  click_link(link)
end
Then /^(?:|I ) should be on the (.+) page$/ do |page_name|
  current_path.should == '/games/meet_details'
end