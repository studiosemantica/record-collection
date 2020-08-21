Rails.application.routes.draw do
  resource :users, only: [:create]

  # post "/login", to: "users#login"
  # get "/auto_login", to: "users#auto_login"
  
  post '/artists', to: 'artists#create
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get '/artists/:artist_id', to: 'artists#show'
  get '/artists/search/:search_string', to: 'artists#search'
  


  resources :artists do
    resources :records do
    end
  end

end