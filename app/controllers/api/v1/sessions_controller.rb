class Api::V1::SessionsController < ApplicationController
  # skip_before_action :authenticate

  def create
    command = AuthenticateUser.call(params[:username], params[:password])
    id = User.find_by(username: params[:username]).id

    if command.success?
      render json: { auth_token: command.result, username: params[:username], id: id }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end
