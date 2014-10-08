class RantsController < ApplicationController
  def index
    @dashboard = Dashboard.new(current_user)
  end

  def create
    Rant.create(content: params[:rant][:content], user_id: current_user.id)
    redirect_to root_path, notice: "Rant added successfully"
  end

  private

  # def rant_params
  #   params.require(:rant).permit(:content, user_id: current_user.id)
  # end
end