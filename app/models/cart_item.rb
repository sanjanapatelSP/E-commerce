class CartItem < ApplicationRecord
  belongs_to :addcart
  belongs_to :product
end
