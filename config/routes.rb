Rails.application.routes.draw do
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  resources :artists do
    resources :records do

    end
  end

  get '/artists/:artist_id', to: 'artists#show'

end