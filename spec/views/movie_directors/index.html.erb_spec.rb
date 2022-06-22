require 'rails_helper'

RSpec.describe "movie_directors/index", type: :view do
  before(:each) do
    assign(:movie_directors, [
      MovieDirector.create!(
        first_name: "First Name",
        last_name: "Last Name"
      ),
      MovieDirector.create!(
        first_name: "First Name",
        last_name: "Last Name"
      )
    ])
  end

  it "renders a list of movie_directors" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
  end
end
