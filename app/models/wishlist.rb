class Wishlist < ApplicationRecord
  belongs_to :draw
  belongs_to :partecipant
  belongs_to :product
end
