Rails.application.routes.draw do
  get 'users/show'

   devise_for :users
   resources :chirps

   root 'chirps#index'

   get '/:username', to: 'users#show', as: 'username'

  end
