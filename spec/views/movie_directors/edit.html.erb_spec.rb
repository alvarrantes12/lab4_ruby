require 'rails_helper'

RSpec.describe "movie_directors/edit", type: :view do
  before(:each) do
    @movie_director = assign(:movie_director, MovieDirector.create!(
      name: "MyString",
      last_name: "MyString"
    ))
  end

  it "renders the edit movie_director form" do
    render

    assert_select "form[action=?][method=?]", movie_director_path(@movie_director), "post" do

      assert_select "input[name=?]", "movie_director[name]"

      assert_select "input[name=?]", "movie_director[last_name]"
    end
  end
end
