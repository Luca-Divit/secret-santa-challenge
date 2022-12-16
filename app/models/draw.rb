class Draw < ApplicationRecord
  belongs_to :user
  has_many :draw_partecipants
  has_many :partecipants, through: :draw_partecipants

  validates :title, :budget, :date, presence: true
end
