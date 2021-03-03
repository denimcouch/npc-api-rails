Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, only: [:index, :create, :show]
    post "/login", to: "users#login"
    get "/auto_login", to: "users#auto_login"

  end
  
end
