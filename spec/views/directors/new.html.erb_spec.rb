require 'rails_helper'

RSpec.describe "directors/new", type: :view do
  before(:each) do
    assign(:director, Director.new(
      firstname: "MyString",
      lastname: "MyString"
    ))
  end

  it "renders new director form" do
    render

    assert_select "form[action=?][method=?]", directors_path, "post" do

      assert_select "input[name=?]", "director[firstname]"

      assert_select "input[name=?]", "director[lastname]"
    end
  end
end
