class Field < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: ["tennis", "football", "basketball", "squash", "volleyball", "badminton", "table tennis"]}
  validates :price_per_hour, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :picture, presence: true
  validates :opening_hours, presence: true

end
