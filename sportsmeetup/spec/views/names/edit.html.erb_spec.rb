require 'rails_helper'

RSpec.describe "names/edit", type: :view do
  before(:each) do
    @name = assign(:name, Name.create!(
      :email => "MyString",
      :login => "MyString"
    ))
  end

  it "renders the edit name form" do
    render

    assert_select "form[action=?][method=?]", name_path(@name), "post" do

      assert_select "input#name_email[name=?]", "name[email]"

      assert_select "input#name_login[name=?]", "name[login]"
    end
  end
end
