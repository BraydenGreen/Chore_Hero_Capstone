Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :children, controllers: { sessions: 'children/sessions'}
  devise_for :parents, controllers: {sessions: 'parent/sessions', registrations: 'parent/registrations'}
  
  resources :badges
  resources :chores

  get '/faq', to: 'static_pages#faq', as: 'faq'
  get '/about', to: 'static_pages#about', as: 'about'
  # get '/home', to: 'static_pages#home', as: 'home'

  get '/parent_show', to: 'parents#parent_show', as: :parent_show
  # get '/parents/sign_out' 

end
