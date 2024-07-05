require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      description: "MyText",
      price: 1,
      stock: 1,
      size: 1,
      size_measurment: "MyString",
      sku: "MyString",
      is_active: false,
      on_sale: false,
      catagory: nil
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[stock]"

      assert_select "input[name=?]", "product[size]"

      assert_select "input[name=?]", "product[size_measurment]"

      assert_select "input[name=?]", "product[sku]"

      assert_select "input[name=?]", "product[is_active]"

      assert_select "input[name=?]", "product[on_sale]"

      assert_select "input[name=?]", "product[catagory_id]"
    end
  end
end
