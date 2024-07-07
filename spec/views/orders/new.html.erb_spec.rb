require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      shopper: nil,
      purchased: false,
      shipped: false
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[shopper_id]"

      assert_select "input[name=?]", "order[purchased]"

      assert_select "input[name=?]", "order[shipped]"
    end
  end
end
