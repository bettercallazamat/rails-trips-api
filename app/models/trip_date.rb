class TripDate < ApplicationRecord
  belongs_to :trip

  has_many :reservations, foreign_key: 'reserved_trip_date_id', class_name: 'Reservation'
  has_many :reservors, through: :reservations

  validates :date,
            presence: true,
            uniqueness: true
end
