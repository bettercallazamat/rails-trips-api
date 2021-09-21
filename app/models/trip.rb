class Trip < ApplicationRecord
  has_many :trip_dates

  validates_presence_of :title, :description
end
