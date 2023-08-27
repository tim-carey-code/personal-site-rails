
Rails.application.routes.draw do
  constraints(subdomain: 'www') do
    get ':any', to: redirect(subdomain: nil, status: 301), any: /.*/
  end

  # Redirect root path from www subdomain
  get '/', to: redirect(subdomain: nil, status: 301), constraints: { subdomain: 'www' }

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
