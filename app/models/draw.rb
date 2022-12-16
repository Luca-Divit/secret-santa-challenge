class Draw < ApplicationRecord
  belongs_to :user
  has_many :partecipants, through: :draw_partecipants

  validates :title, :budget, :date, presence: true
  # validates :budget, presence: true
  # validates :date, presence: true
end
