class Product < ApplicationRecord
  has_many :product_catagories
  has_many :catagories, through: :product_catagories
end
