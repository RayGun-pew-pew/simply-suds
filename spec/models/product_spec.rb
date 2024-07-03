require 'rails_helper'

RSpec.describe Product, type: :model do
  it "should fail to create an invalid record" do
    expect {create(:product, name: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "create should fail without a name" do
    expect {create(:product, name: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "create should fail without a price" do
    expect {create(:product, price: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "create should fail without an is_active value" do
    expect {create(:product, is_active: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "create should fail without a value for stock" do
    expect {create(:product, stock: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "create should fail without an on_sale value" do
    expect {create(:product, on_sale: nil)}.to raise_error{ActiveRecord::RecordInvalid}
  end
  it "should update stock value of valid product"
  it "should update name value of valid product"
  it "should update price value of valid product"
  it "should update is_active value of valid product"
  it "should update on_sale value of valid product"
  it "should update sku value of valid product"
  it "should delete valid product"
  it "should fail to delete non-existent product"
  it "should fail to set stock value below zero"
  it "should fail to set price below zero"
  it "should fail to set size below zero"
end
 
