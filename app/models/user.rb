class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  acts_as_followable
  acts_as_follower

  has_many :questions
  has_many :answers

  def topics
    following_topics
  end

  def following
    following_users
  end

end
