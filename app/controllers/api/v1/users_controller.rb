class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reserved_trip_dates = @user.reserved_trip_dates
    render json: { user: @user,
                   reserved_trips_date: @reserved_trip_dates }
  end

  def create
    @user = User.create!(user_params)
    render json: @user
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
