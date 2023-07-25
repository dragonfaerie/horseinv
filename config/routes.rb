Rails.application.routes.draw do
  resource :session, only: [ :new, :create, :destroy]
  get "signin" => "sessions#new"

  resources :users
  get "signup" => "users#new"

  resources :horses
  resources :molds

end
