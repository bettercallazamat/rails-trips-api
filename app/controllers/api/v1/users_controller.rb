class Api::V1::UsersController < ApplicationController
  before_action :authenticate, only: [:show]

  def show
    @user = User.find(params[:id])
    # @reserved_trip_dates = @user.reserved_trip_dates
    # render json: @user, include: ['reserved_trip_dates', 'reserved_trip_dates.trip']
    # render json: @user.to_json(include: :reserved_trip_dates)
    render json: @user.to_json(include: { reserved_trip_dates: {
                                            include: { trip: {
                                                        only: :title
                                            }},
                                            only: [:id, :date, :created_at] } })
  end

  def create
    begin
      @user = User.create!(user_params)
      render json: @user
    rescue ActiveRecord::RecordInvalid => e
      render json: {
        error: e.to_s
      }, status: 422
    end
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
