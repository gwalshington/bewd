Rails.application.routes.draw do

  # root 'movies#index'
  get '/movies', to: 'movies#index'
  get '/movies/new', to: 'movies#new', as: 'new'
  get '/movies/:id', to: 'movies#show', as: 'movie'

end
