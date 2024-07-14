
class Order < ApplicationRecord
  belongs_to :shopper
  has_many :line_items
end
