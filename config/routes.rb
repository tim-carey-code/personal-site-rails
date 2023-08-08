Rails.application.routes.draw do
  namespace :admin do
    resources :blogs
    resources :users

    root to: 'blogs#index'
  end
  devise_for :users
  root 'home#index'
  get '/about', to: 'home#about'
  get '/blog', to: 'home#blog'
  get '/work', to: 'home#work'
  get '/contact', to: 'home#contact'
  get '/resume', to: 'home#resume'
end
