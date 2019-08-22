Rails.application.routes.draw do

  resources :categories
  resources :users

  root 'sessions#home'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :exhibits, only: [:index, :new, :show, :create]

  resources :users , only: [:new, :show] do
    resources :exhibits , only: [:show, :index]
  end

  resources :categories , only: [:new, :show] do
    resources :exhibits , only: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
