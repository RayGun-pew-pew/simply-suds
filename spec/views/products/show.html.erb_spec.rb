require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    assign(:product, Product.create!(
      name: "Name",
      sku: "Sku",
      price: 2,
      user_id: nil,
      is_active: false,
      size: 3,
      size_measurment: "Size Measurment",
      stock: 4,
      on_sale: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Size Measurment/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
  end
end
