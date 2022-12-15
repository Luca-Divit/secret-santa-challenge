class DrawPartecipant < ApplicationRecord
  belongs_to :draw
  belongs_to :partecipant
end
