class Partecipant < ApplicationRecord
  has_many :draws, through: :draw_partecipants
end
