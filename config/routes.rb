Rails.application.routes.draw do
  get 'movies/index'
  get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :lists do
    resources :bookmarks, only: [:new, :create]
    resources :movies, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  root "lists#index"

  # # see all the lists
  # get "lists", to: "lists#index"

  # # create new list

  # # see one item on list
  # get "lists/:id", to: "lists#show", as: :list
end
