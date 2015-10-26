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

  post '/complete_chore/:id', to: 'chores#complete_chore', as: 'complete_chore'
  #post '/complete_chore/:id', to: 'chores#complete_chore', as: 'complete_chore'

  get '/faq', to: 'static_pages#faq', as: 'faq'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/charts', to: 'static_pages#charts', as: 'charts'
  get '/chores_assigned', to: 'chores#assigned'
end
