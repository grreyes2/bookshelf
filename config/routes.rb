Rails.application.routes.draw do

  get 'favorites/index'
  get 'favorites/update'
  resources :books
  devise_for :users
  root to: 'books#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
