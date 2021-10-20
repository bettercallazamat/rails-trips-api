class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :imageUrl, :tourDetailsText, :altitudeDifference,
             :season, :distanceByCar, :trekkingDistance, :cost

  has_many :trip_dates
end
