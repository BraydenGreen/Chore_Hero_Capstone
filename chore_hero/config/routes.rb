Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/faq'

  root 'static_pages#home'
  
  resources :badges
  resources :chores

  devise_for :children
  devise_for :parents
end
