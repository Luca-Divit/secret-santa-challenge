class Draw < ApplicationRecord
  belongs_to :user
  has_many :partecipants

  validates :title, :budget, :date, presence: true
end
