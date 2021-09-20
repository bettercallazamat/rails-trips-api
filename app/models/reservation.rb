class Reservation < ApplicationRecord
  belongs_to :reservor, class_name: 'User'
  belongs_to :reserved_trip, class_name: 'Trip'
end
