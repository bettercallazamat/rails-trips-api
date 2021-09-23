class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate, only: [:create]

  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def create
    @reservation = Reservation.create!(reservation_params)
    render json: @reservation
  end

  private

  def reservation_params
    params.permit(:reservor_id, :reserved_trip_date_id)
  end
end
