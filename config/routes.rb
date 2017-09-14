Rails.application.routes.draw do

  root to: 'artists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "artists" => "artists#index"
  # get "artists/:id" => "artists#show", as: :artist
  resources :artists do
    resources :songs, only: [:new, :create, :destroy]
end
namespace :api do
    resources :artists do
      resources :songs
    end
  end
end
