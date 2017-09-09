Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "artists" => "artists#index"
  # get "artists/:id" => "artists#show", as: :artist
  resources :artists
  resources :songs
end
