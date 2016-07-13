Rails.application.routes.draw do
  # get 'sessions/new'
  resources :sessions, only: [:new, :create]
  get 'login' => 'sessions#new'
  root 'welcome#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
