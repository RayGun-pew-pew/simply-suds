require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      sku: "MyString",
      price: 1,
      is_active: false,
      size: 1,
      size_measurment: "MyString",
      stock: 1,
      on_sale: false
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[sku]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[is_active]"

      assert_select "input[name=?]", "product[size]"

      assert_select "input[name=?]", "product[size_measurment]"

      assert_select "input[name=?]", "product[stock]"

      assert_select "input[name=?]", "product[on_sale]"
    end
  end
end
