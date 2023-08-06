Rails.application.routes.draw do
  namespace :admin do
    resources :blogs
    resources :users

    root to: 'blogs#index'
  end
  resources :blogs
  devise_for :users
  root 'home#index'

  get '/resume', to: 'home#resume'
end
