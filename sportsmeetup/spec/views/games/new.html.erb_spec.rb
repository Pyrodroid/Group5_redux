require 'rails_helper'
=begin
RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :emails => "MyString",
      :title => "MyString2"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_title[game=?]", "game[title]"
    end
  end
end
=end