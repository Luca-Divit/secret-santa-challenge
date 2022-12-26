class Partecipant < ApplicationRecord
  belongs_to :draw
  has_one :match_as_giver, class_name: "Match", foreign_key: :giver
  has_one :match_as_receiver, class_name: "Match", foreign_key: :receiver
end
