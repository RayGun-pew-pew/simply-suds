require 'rails_helper'

RSpec.describe "shoppers/new", type: :view do
  before(:each) do
    assign(:shopper, Shopper.new(
      first_name: "MyString",
      last_name: "MyString",
      city: "MyString",
      state: "MyString",
      address_line_1: "MyString",
      address_line_2: "MyString",
      zip_code: "MyString",
      email_address: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders new shopper form" do
    render

    assert_select "form[action=?][method=?]", shoppers_path, "post" do

      assert_select "input[name=?]", "shopper[first_name]"

      assert_select "input[name=?]", "shopper[last_name]"

      assert_select "input[name=?]", "shopper[city]"

      assert_select "input[name=?]", "shopper[state]"

      assert_select "input[name=?]", "shopper[address_line_1]"

      assert_select "input[name=?]", "shopper[address_line_2]"

      assert_select "input[name=?]", "shopper[zip_code]"

      assert_select "input[name=?]", "shopper[email_address]"

      assert_select "input[name=?]", "shopper[phone_number]"
    end
  end
end
