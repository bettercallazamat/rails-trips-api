class TripDate < ApplicationRecord
  has_many :reservations, foreign_key: 'reserved_trip_date_id', class_name: 'Reservation'
  has_many :reservors, through: :reservations
end
