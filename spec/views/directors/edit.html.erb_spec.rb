require 'rails_helper'

RSpec.describe "directors/edit", type: :view do
  before(:each) do
    @director = assign(:director, Director.create!(
      firstname: "MyString",
      lastname: "MyString"
    ))
  end

  it "renders the edit director form" do
    render

    assert_select "form[action=?][method=?]", director_path(@director), "post" do

      assert_select "input[name=?]", "director[firstname]"

      assert_select "input[name=?]", "director[lastname]"
    end
  end
end
