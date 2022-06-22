require 'rails_helper'

RSpec.describe "movie_directors/new", type: :view do
  before(:each) do
    assign(:movie_director, MovieDirector.new(
      name: "MyString",
      last_name: "MyString"
    ))
  end

  it "renders new movie_director form" do
    render

    assert_select "form[action=?][method=?]", movie_directors_path, "post" do

      assert_select "input[name=?]", "movie_director[name]"

      assert_select "input[name=?]", "movie_director[last_name]"
    end
  end
end
