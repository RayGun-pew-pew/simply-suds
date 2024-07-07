require 'rails_helper'

RSpec.describe "shoppers/index", type: :view do
  before(:each) do
    assign(:shoppers, [
      Shopper.create!(
        first_name: "First Name",
        last_name: "Last Name",
        city: "City",
        state: "State",
        address_line_1: "Address Line 1",
        address_line_2: "Address Line 2",
        zip_code: "Zip Code",
        email_address: "Email Address",
        phone_number: "Phone Number"
      ),
      Shopper.create!(
        first_name: "First Name",
        last_name: "Last Name",
        city: "City",
        state: "State",
        address_line_1: "Address Line 1",
        address_line_2: "Address Line 2",
        zip_code: "Zip Code",
        email_address: "Email Address",
        phone_number: "Phone Number"
      )
    ])
  end

  it "renders a list of shoppers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address Line 1".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address Line 2".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Zip Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
  end
end
