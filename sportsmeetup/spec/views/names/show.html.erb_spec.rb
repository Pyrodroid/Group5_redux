require 'rails_helper'

RSpec.describe "names/show", type: :view do
  before(:each) do
    @name = assign(:name, Name.create!(
      :email => "Email",
      :login => "Login"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Login/)
  end
end
