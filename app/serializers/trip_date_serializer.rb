class TripDateSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :date

  belongs_to :trip
end
