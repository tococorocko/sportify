class Booking < ApplicationRecord
  belongs_to :field
  belongs_to :user

  validates :status, inclusion: { in: %w(pending accepted rejected) }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
