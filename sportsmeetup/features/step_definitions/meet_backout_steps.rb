Then(/^I hit the back out link$/) do
  click_link("Back Out", match: :first)
end

Then(/^I should see the backout form$/) do
    expect(page).to have_content("Back Out")
end

Then(/^I hit the "Back Out" button$/) do
    click_button("Back Out")
end

Given(/^there is a meet with my name and email signed up$/) do
  game = FactoryGirl.create(:game, sign_ups: 3)
  Game.sign_up(game, "New Joe", "new@email.com")
  Game.back_out(game, "New Joe", "new@email.com")
    expect(game.emails).to_not have_content("new@email.com")
end

Given(/^I backout of the meet$/) do
end

Then(/^the meet should not include my name and email anymore$/) do
end
