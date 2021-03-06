class User < ActiveRecord::Base
  has_secure_password

  has_many :rants

  has_many :followers, foreign_key: :following_id, class_name: 'Follower'
  has_many :followings, foreign_key: :follower_id, class_name: 'Follower'

  def full_name
    "#{first_name} #{last_name}"
  end

  def is_following?(user)
    Follower.where(following_id: user.id, follower_id: id) != [] ? true : false
  end
end
