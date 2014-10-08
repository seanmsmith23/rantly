class Dashboard
  attr_accessor :rants

  def initialize(user)
    @user = user
    @rants = Rant.all
  end

  def new_rant
    Rant.new
  end

  def my_rants
    Rant.where(user_id: @user.id)
  end
end