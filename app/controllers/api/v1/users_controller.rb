class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reserved_trips = @user.reserved_trips
    render json: { user: @user,
                   reserved_trips: @reserved_trips }
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
