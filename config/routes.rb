Rails.application.routes.draw do

  devise_for :users
  resources :books
  resources :users
  resources :homes, only: [:index]
  root 'users#top'

end
