require 'rails_helper'

RSpec.describe "directors/show", type: :view do
  before(:each) do
    @director = assign(:director, Director.create!(
      firstname: "Firstname",
      lastname: "Lastname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
  end
end
