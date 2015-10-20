Rails.application.routes.draw do
  root 'static_pages#home'
  Rails.application.routes.draw do
    devise_for :users, controllers: {
      registrations: 'users/registrations'
    }
  end

  resources :users
  resources :children
  resources :badges
  resources :chores

  get '/faq', to: 'static_pages#faq', as: 'faq'
  get '/about', to: 'static_pages#about', as: 'about'
end
