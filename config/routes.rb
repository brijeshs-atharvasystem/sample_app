Rails.application.routes.draw do
  # resources :answers
  resources :topics
  resources :questions do
    member do
      post :answer
    end
    # resources :answers, only: [:create]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/question/:id', to: 'home#question', as: :home_question

  root to: "home#index"

  resources :followers, only: [] do
    member do
      post :follow_user
      post :follow_topic
    end
  end

end
