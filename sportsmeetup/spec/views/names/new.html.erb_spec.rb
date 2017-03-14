require 'rails_helper'

RSpec.describe "names/new", type: :view do
  before(:each) do
    assign(:name, Name.new(
      :email => "MyString",
      :login => "MyString"
    ))
  end

  it "renders new name form" do
    render

    assert_select "form[action=?][method=?]", names_path, "post" do

      assert_select "input#name_email[name=?]", "name[email]"

      assert_select "input#name_login[name=?]", "name[login]"
    end
  end
end
