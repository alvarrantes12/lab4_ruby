require 'rails_helper'

RSpec.describe "movie_directors/show", type: :view do
  before(:each) do
    @movie_director = assign(:movie_director, MovieDirector.create!(
      name: "Name",
      last_name: "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
  end
end
