require 'rails_helper'

RSpec.describe "catagories/show", type: :view do
  before(:each) do
    assign(:catagory, Catagory.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
