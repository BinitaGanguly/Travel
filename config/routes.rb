Rails.application.routes.draw do
  get "trips/index"
  get "trips/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "travelbs#index"
  resources :travelbs
  resources :trips do
    resources :newtables
  end

end
