class Api::V1::UsersController < ApplicationController
  before_action :authenticate, only: [:show]

  def show
    @user = User.find(params[:id])
    render json: @user.to_json(include: { reserved_trip_dates: {
                                 include: { trip: {
                                   only: :title
                                 } },
                                 only: %i[id date created_at]
                               } })
  end

  def create
    # rubocop:disable Style/RedundantBegin
    begin
      @user = User.create!(user_params)
      render json: @user
    rescue ActiveRecord::RecordInvalid => e
      render json: {
        error: e.to_s
      }, status: 422
    end
    # rubocop:enable Style/RedundantBegin
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
