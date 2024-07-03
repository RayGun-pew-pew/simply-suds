class Catagory < ApplicationRecord
  has_many :product_catagories
  has_many :products, through: :product_catagories
end
