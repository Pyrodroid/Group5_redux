require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :emails => "Email",
        :title => "Title"
      ),
      Game.create!(
        :emails => "Email",
        :title => "Title"
      )
    ])
  end
=begin
  it "renders a list of names" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
  end
=end
end
