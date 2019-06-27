Rails.application.routes.draw do
  devise_for :users
  namespace :v1 do
    # resources :contacts
    resources :sessions, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'course#home'
  resources :tracks
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'

  get 'assignment', to: 'assignments#show'

end
