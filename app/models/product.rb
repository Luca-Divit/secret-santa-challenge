class Product < ApplicationRecord
  has_many :wishlists, through: :wishlist_products
end
