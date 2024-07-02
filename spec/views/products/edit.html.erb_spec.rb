require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      sku: "MyString",
      price: 1,
      user_id: nil,
      is_active: false,
      size: 1,
      size_measurment: "MyString",
      stock: 1,
      on_sale: false
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[sku]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[user_id_id]"

      assert_select "input[name=?]", "product[is_active]"

      assert_select "input[name=?]", "product[size]"

      assert_select "input[name=?]", "product[size_measurment]"

      assert_select "input[name=?]", "product[stock]"

      assert_select "input[name=?]", "product[on_sale]"
    end
  end
end
