class FollowersController < ApplicationController

  def follow_user
    user = User.find(params[:id])
    redirect_to root_path and return if user == current_user
    if current_user.following?(user)
      flash[:danger] = 'Already following'
    else
      current_user.follow(user)
      flash[:notice] = 'User is following now'
    end
    redirect_to root_path
  end

  def follow_topic
    topic = Topic.find(params[:id])
    if current_user.following?(topic)
      flash[:danger] = 'Already following'
    else
      current_user.follow(topic)
      flash[:notice] = 'User is following now'
    end
    redirect_to root_path
  end
end
