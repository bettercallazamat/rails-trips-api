class User < ApplicationRecord
  has_secure_password

  has_many :reservations, foreign_key: 'reservor_id', class_name: 'Reservation'
  has_many :reserved_trip_dates, through: :reservations

  validates :username,
            presence: true,
            uniqueness: true,
            length: { minimum: 4, maximum: 20 },
            format: { with: /\A[a-zA-Z0-9]+\Z/ }

  password_format = /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/x

  # rubocop:disable Layout/LineLength
  validates :password,
            presence: true,
            format: { with: password_format,
                      message: '(i)Must contain 8 or more characters, (ii)Must contain a digit, (iii)Must contain a lower case character, (iv)Must contain an upper case character' },
            on: :create
  # rubocop:enable Layout/LineLength
end
