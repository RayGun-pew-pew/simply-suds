require 'rails_helper'

RSpec.describe "product_catagories/index", type: :view do
  before(:each) do
    assign(:product_catagories, [
      ProductCatagory.create!(
        product: nil,
        catagory: nil
      ),
      ProductCatagory.create!(
        product: nil,
        catagory: nil
      )
    ])
  end

  it "renders a list of product_catagories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
