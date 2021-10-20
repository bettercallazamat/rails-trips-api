class Trip < ApplicationRecord
  has_many :trip_dates

  validates_presence_of :title,
                        :description,
                        :imageUrl,
                        :tourDetailsText,
                        :altitudeDifference,
                        :season,
                        :distanceByCar,
                        :trekkingDistance,
                        :cost
end
