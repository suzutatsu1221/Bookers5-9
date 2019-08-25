Rails.application.routes.draw do
 
  devise_for :users
  resources :books
  resources :users
  get 'home/about' => 'homes#index'
  root 'users#top'

end
