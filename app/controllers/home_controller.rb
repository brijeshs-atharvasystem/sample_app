class HomeController < ApplicationController

  def index
    @questions = Question.limit(10)
  end

  def question
    @question = Question.find(params[:id])
    @answers = @question.answers
  rescue
    flash[:danger] = 'Resource is not found'
  end
end
