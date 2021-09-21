class Trip < ApplicationRecord
  has_many :reservations, dependent: :destroy

  has_many :reservations, foreign_key: 'reserved_trip_id', class_name: 'Reservation'
  has_many :reservors, through: :reservations

  validates_presence_of :title, :description
end
