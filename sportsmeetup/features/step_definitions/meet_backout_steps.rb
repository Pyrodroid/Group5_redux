Then(/^I hit the back out link$/) do
  click_link("Back Out", match: :first)
end

Then(/^I should see the backout form$/) do
    expect(page).to have_content("Back Out")
end

Then(/^I hit the "Back Out" button$/) do
    click_button("Back Out")
end