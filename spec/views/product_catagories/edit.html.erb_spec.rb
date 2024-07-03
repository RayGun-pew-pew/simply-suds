require 'rails_helper'

RSpec.describe "product_catagories/edit", type: :view do
  let(:product_catagory) {
    ProductCatagory.create!(
      product: nil,
      catagory: nil
    )
  }

  before(:each) do
    assign(:product_catagory, product_catagory)
  end

  it "renders the edit product_catagory form" do
    render

    assert_select "form[action=?][method=?]", product_catagory_path(product_catagory), "post" do

      assert_select "input[name=?]", "product_catagory[product_id]"

      assert_select "input[name=?]", "product_catagory[catagory_id]"
    end
  end
end
