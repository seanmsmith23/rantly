class FollowersController < ApplicationController
  def create
    Follower.create(follower_id: current_user.id, following_id: params[:user_id])
    redirect_to root_path
  end

  def index
    @followings = Follower.where(follower_id: params[:user_id])
  end
end