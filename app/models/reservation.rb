class Reservation < ApplicationRecord
  belongs_to :trip

  validates_presence_of :user, :isPaid
end
