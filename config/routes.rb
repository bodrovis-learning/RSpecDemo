Rails.application.routes.draw do
  resources :users
  resources :posts

  root to: 'users#new'
end
