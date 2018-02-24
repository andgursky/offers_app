Rails.application.routes.draw do

  root to: "offers#index"
  post "/users/:id/offers" => "offers#create", as: "create_offers"
  get "/users/:id/offers" => "offers#show", as: "show_offers"
  devise_for :users
  resources :offers, only: %i[index update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
