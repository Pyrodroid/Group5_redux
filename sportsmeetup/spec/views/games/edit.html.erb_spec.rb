require 'rails_helper'
=begin
RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :emails => "MyString",
      :title=> "MyString2"
    ))
  end

  it "renders the edit name form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#name_email[name=?]", "game[email]"

      assert_select "input#name_login[name=?]", "game[title]"
    end
  end

end
=end