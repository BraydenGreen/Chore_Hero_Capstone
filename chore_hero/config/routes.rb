Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
    
  resources :children
  resources :badges
  resources :chores



  get '/faq', to: 'static_pages#faq', as: 'faq'
  get '/about', to: 'static_pages#about', as: 'about'
  

  resources :users, :only => [:show]
end
