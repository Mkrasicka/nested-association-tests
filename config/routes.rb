Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'posts#index'

  resources :posts, only: [:index, :new, :show, :create, :edit, :destroy] do
    resources :comments, only: [:new, :create]
  end

  resources :comments, only: [:destroy]
end
