Rails.application.routes.draw do
  get 'children/index'

  get 'parents/index'

  get 'static_pages/about'

  get 'static_pages/faq'

  root to: 'static_pages#home'
  
  resources :badges
  resources :chores

  devise_for :children
  devise_for :parents
end
