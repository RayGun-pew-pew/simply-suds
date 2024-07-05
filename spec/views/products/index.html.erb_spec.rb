require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        name: "Name",
        description: "MyText",
        price: 2,
        stock: 3,
        size: 4,
        size_measurment: "Size Measurment",
        sku: "Sku",
        is_active: false,
        on_sale: false,
        catagory: nil
      ),
      Product.create!(
        name: "Name",
        description: "MyText",
        price: 2,
        stock: 3,
        size: 4,
        size_measurment: "Size Measurment",
        sku: "Sku",
        is_active: false,
        on_sale: false,
        catagory: nil
      )
    ])
  end

  it "renders a list of products" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Size Measurment".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Sku".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
