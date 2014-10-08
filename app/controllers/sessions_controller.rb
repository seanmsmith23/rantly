class SessionsController < ApplicationController
  skip_before_action :ensure_authenticated_user

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      @user = User.new(username: params[:user][:username])
      @user.errors[:base] << "Username/ password is invalid"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
end
