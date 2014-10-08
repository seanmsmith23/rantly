class Dashboard

  def initialize(user)
    @user = user
  end

  def new_rant
    Rant.new
  end

  def others_users_rants
    Rant.all - my_rants
  end

  def my_rants
    Rant.where(user_id: @user.id)
  end
end