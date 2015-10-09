Rails.application.routes.draw do

  get '/faq', to: 'static_pages#faq', as: 'faq'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/home', to: 'static_pages#home', as: 'home'

  get '/parent_show', to: 'parents#parent_show', as: :parent_show


  root to: 'static_pages#home'
  
  resources :badges
  resources :chores

  devise_for :children, controllers: { sessions: 'children/sessions'}
  devise_for :parents, controllers: {sessions: 'parent/sessions', registrations: 'parent/registrations'}
end
