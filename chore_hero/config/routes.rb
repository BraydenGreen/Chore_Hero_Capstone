Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/faq'

  root 'static_pages#home'
  
  resources :badges
  resources :chores

  devise_for :children, controllers: { sessions: 'children/sessions'}
  devise_for :parents, controllers: {sessions: 'parent/sessions', registrations: 'parent/registraions'}
end
