Rails.application.routes.draw do
  resources :questions
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  resources :followers, only: [] do
    member do
      post :follow_user
      post :follow_question
    end
  end

end
