class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :reserved_trip_dates, through: :reservations
end
