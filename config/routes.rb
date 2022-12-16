Rails.application.routes.draw do
  get 'draws/index'
  devise_for :users
  root to: "draws#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :draws, only: %i[create show] do
    resources :partecipants, only: %i[create show]
  end
  resources :partecipants, only: :destroy
  resources :users, only: %i[create show]
end
