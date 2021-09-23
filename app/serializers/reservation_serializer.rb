class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :reservor_id, :reserved_trip_date_id

  belongs_to :reservor, class_name: 'User'
  belongs_to :reserved_trip_date, class_name: 'TripDate'
end
