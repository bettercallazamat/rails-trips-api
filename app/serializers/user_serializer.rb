class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  # has_many :reservations, foreign_key: 'reservor_id', class_name: 'Reservation'
  has_many :reserved_trip_dates, through: :reservations
end
