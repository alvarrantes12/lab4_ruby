require 'rails_helper'

RSpec.describe "directors/index", type: :view do
  before(:each) do
    assign(:directors, [
      Director.create!(
        name: "Name",
        lastname: "Lastname"
      ),
      Director.create!(
        name: "Name",
        lastname: "Lastname"
      )
    ])
  end

  it "renders a list of directors" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Lastname".to_s, count: 2
  end
end
