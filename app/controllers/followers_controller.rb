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

  def follow_question
    question = Question.find(params[:id])
    redirect_to root_path and return if question.user_id == current_user.id
    if current_user.following?(question)
      flash[:danger] = 'Already following'
    else
      current_user.follow(question)
      flash[:notice] = 'User is following now'
    end
    redirect_to root_path
  end
end
