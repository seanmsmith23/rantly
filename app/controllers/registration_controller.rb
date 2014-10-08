class RegistrationController < ApplicationController
  skip_before_action :ensure_authenticated_user

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    redirect_to root_path, notice: "Thank you for registering"
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :bio, :frequency)
  end
end
