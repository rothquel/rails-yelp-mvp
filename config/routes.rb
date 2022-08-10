Rails.application.routes.draw do
  # # Read all
  # get "restaurants", to: "restaurants#index"
  # # Create
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # # Read one - The `show` route needs to be *after* `new` route.
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  resources :restaurants do
    resources :reviews, only: [:new, :create, :show, :index]
  end
end
