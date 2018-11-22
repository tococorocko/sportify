class Field < ApplicationRecord
  belongs_to :user
  has_many :bookings
  CATEGORY = ["tennis", "football", "basketball", "squash", "volleyball", "badminton", "ping pong"]

  validates :name, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :price_per_hour, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :picture, presence: true
  validates :opening_hours, presence: true

  mount_uploader :picture, PhotoUploader

  def complete_address
    street + " " + city
  end

  geocoded_by :complete_address
  after_validation :geocode, if: :will_save_change_to_street?

end
