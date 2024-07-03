require 'rails_helper'

RSpec.describe Product, type: :model do
  it "should fail to create an invalid record"
  it "create should fail without a name"
  it "create should fail without a price"
  it "create should fail without an is_active value"
  it "create should fail without a value for stock"
  it "create should fail without an on_sale value"
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
 
