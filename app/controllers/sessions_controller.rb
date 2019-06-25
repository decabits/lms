class V1::SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user&.valid_password?(params[:password])
      render json: user.as_json(only: [:email]), status: :created
      session[:user_id] = user.id
      # redirect_to user_path(user)
    else
      head(:unauthorized)
    end
  end

  def destroy
    session[:user_id] = nil
    # destroy_user_session_path(@user), method: :delete
    redirect_to root_path
  end
end