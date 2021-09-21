class Reservation < ApplicationRecord
  belongs_to :reservor, class_name: 'User'
  belongs_to :reserved_trip_date, class_name: 'TripDate'
end
