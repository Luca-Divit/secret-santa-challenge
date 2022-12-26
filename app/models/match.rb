class Match < ApplicationRecord
  belongs_to :draw
  belongs_to :giver, class_name: "Partecipant"
  belongs_to :receiver, class_name: "Partecipant"
  validates :giver, uniqueness: true
  validates :receiver, uniqueness: { scope: :giver }
end
