require 'rails_helper'

RSpec.describe "shoppers/edit", type: :view do
  let(:shopper) {
    Shopper.create!(
      first_name: "MyString",
      last_name: "MyString",
      city: "MyString",
      state: "MyString",
      address_line_1: "MyString",
      address_line_2: "MyString",
      zip_code: "MyString",
      email_address: "MyString",
      phone_number: "MyString"
    )
  }

  before(:each) do
    assign(:shopper, shopper)
  end

  it "renders the edit shopper form" do
    render

    assert_select "form[action=?][method=?]", shopper_path(shopper), "post" do

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
