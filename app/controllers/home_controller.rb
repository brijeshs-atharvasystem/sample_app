class HomeController < ApplicationController

  def index
    @questions = Question.limit(10)
  end
end
