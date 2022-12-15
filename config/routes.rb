Rails.application.routes.draw do
  get 'draws/index'
  devise_for :users
  root to: "draws#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: :create
end
