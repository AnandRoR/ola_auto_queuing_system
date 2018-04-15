Rails.application.routes.draw do
  resources :requests
  get "accept_request", to: "drivers#accept_request"
  resources :customers
  resources :drivers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
