class Api::V1::TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips.to_json(include: { trip_dates: { only: %i[id date] } }),
           status: :ok
  end
end
