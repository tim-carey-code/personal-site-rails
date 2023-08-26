Rails.application.routes.draw do
  constraints(subdomain: 'www') do
    get '*path', to: redirect(subdomain: nil, path: '/%{path}'), via: :all
  end
  namespace :admin do
    resources :blogs
    resources :users
    root to: 'blogs#index'
  end
  devise_for :users
  root 'home#index'
  resources :blogs
  resources :subscribers, only: %i[create destroy]
  resources :contacts, only: %i[create]
  get 'unsubscribe/:token', to: 'subscribers#unsubscribe', as: :unsubscribe
  get '/about', to: 'home#about'
  get '/work', to: 'home#work'
  get '/contact', to: 'home#contact'
  get '/resume', to: 'home#resume'
end
