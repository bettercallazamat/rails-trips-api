class Trip < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates_presence_of :title, :description, :date
end
