Rails.application.routes.draw do


  get 'sessions/new'



  resources :posts
  resources :users
  # root 'application#hello'

  get  'static_pages/home'
  get 'layouts/application'
  root 'static_pages#home'


  root 'static_pages#home'

  get  '/contact', to: 'static_pages#contact'


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  get  '/signup',  to: 'users#new'
end
