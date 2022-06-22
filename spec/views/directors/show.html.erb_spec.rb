require 'rails_helper'

RSpec.describe "directors/show", type: :view do
  before(:each) do
    @director = assign(:director, Director.create!(
      name: "Name",
      lastName: "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
  end
end
