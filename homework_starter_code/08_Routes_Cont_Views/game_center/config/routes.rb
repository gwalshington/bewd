Rails.application.routes.draw do
  root 'home#index'
  get '/guess', to: 'secret_numbers#new'
  # as: customizes helper path
  get '/guess/:choice', to: 'secret_numbers#result', as: 'choice'

  get '/throw', to: 'rock_paper_scissors#new'
  get '/throw/:sign', to: 'rock_paper_scissors#result', as: 'sign'

  get '/toss', to: 'dice#new'
  get '/toss/:roll', to: 'dice#result', as: 'roll'
end
