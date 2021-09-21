class User < ApplicationRecord
  has_secure_password

  has_many :reservations, foreign_key: 'reservor_id', class_name: 'Reservation'
  has_many :reserved_trip_dates, through: :reservations
end
