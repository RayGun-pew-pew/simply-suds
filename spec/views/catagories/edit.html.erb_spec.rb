require 'rails_helper'

RSpec.describe "catagories/edit", type: :view do
  let(:catagory) {
    Catagory.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:catagory, catagory)
  end

  it "renders the edit catagory form" do
    render

    assert_select "form[action=?][method=?]", catagory_path(catagory), "post" do

      assert_select "input[name=?]", "catagory[name]"
    end
  end
end
