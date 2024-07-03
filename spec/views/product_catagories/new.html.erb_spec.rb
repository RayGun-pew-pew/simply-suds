require 'rails_helper'

RSpec.describe "product_catagories/new", type: :view do
  before(:each) do
    assign(:product_catagory, ProductCatagory.new(
      product: nil,
      catagory: nil
    ))
  end

  it "renders new product_catagory form" do
    render

    assert_select "form[action=?][method=?]", product_catagories_path, "post" do

      assert_select "input[name=?]", "product_catagory[product_id]"

      assert_select "input[name=?]", "product_catagory[catagory_id]"
    end
  end
end
