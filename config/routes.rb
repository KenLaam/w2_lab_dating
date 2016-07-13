Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]
  resources :users

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  get 'auth/:provider/callback' => 'sessions#callback'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
