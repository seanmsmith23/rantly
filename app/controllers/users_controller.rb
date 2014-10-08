class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.id == params[:id].to_i
      user = User.find(params[:id])
      user.update(user_params)
      redirect_to root_path, notice: "Information updated successfully"
    else
      redirect_to :back
    end
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :bio)
  end
end