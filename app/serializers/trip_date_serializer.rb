class TripDateSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :date

  belongs_to :trip
  # has_many :reservations, foreign_key: 'reserved_trip_date_id', class_name: 'Reservation'
  # has_many :reservors, through: :reservations
end
