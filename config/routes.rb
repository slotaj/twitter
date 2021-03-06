Rails.application.routes.draw do
  root to: "welcome#index"
  get '/auth/twitter', as: :login

  get "/auth/twitter/callback", to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  resources :tweets
end
