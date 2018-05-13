class Event < ApplicationRecord
  has_many :attendances, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 3 }
  validates :date, presence: true,
            length: { maximum: 10 }
end
