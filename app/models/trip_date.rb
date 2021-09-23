class TripDate < ApplicationRecord
  belongs_to :trip

  has_many :reservations, foreign_key: 'reserved_trip_date_id', class_name: 'Reservation'
  has_many :reservors, through: :reservations

  validates_presence_of :date
end
