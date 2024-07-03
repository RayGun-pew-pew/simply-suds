require 'rails_helper'

RSpec.describe "catagories/new", type: :view do
  before(:each) do
    assign(:catagory, Catagory.new(
      name: "MyString"
    ))
  end

  it "renders new catagory form" do
    render

    assert_select "form[action=?][method=?]", catagories_path, "post" do

      assert_select "input[name=?]", "catagory[name]"
    end
  end
end
