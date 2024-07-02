class Product < ApplicationRecord
  validates :name, :price, :stock, :is_active, presence: true
  validates :price, :stock, numericality: { only_integer: true }
  validates :name, uniqueness: true
  
end

