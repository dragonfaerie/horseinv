Rails.application.routes.draw do
  resources :horses

  resource :session, only: [ :new, :create, :destroy]
  get "signin" => "sessions#new"

  resources :users
  get "signup" => "users#new"

end
