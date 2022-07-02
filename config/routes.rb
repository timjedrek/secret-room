Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "secrets#index"

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users, :controllers => { registrations: 'registrations' }

  get "/secrets/usersecrets" => "secrets#usersecrets"
  resources :secrets

  # static pages
  get "/pages/:page" => "pages#show"

end
