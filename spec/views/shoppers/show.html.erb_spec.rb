require 'rails_helper'

RSpec.describe "shoppers/show", type: :view do
  before(:each) do
    assign(:shopper, Shopper.create!(
      first_name: "First Name",
      last_name: "Last Name",
      city: "City",
      state: "State",
      address_line_1: "Address Line 1",
      address_line_2: "Address Line 2",
      zip_code: "Zip Code",
      email_address: "Email Address",
      phone_number: "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Address Line 1/)
    expect(rendered).to match(/Address Line 2/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/Email Address/)
    expect(rendered).to match(/Phone Number/)
  end
end
