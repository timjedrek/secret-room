Rails.application.routes.draw do

  devise_for :users
  resources :secrets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "secrets#index"

  get "/pages/:page" => "pages#show"

end
