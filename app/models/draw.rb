class Draw < ApplicationRecord
  belongs_to :user
  has_many :partecipants, through: :draw_partecipants
end
