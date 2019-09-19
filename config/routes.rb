Rails.application.routes.draw do

  root 'sessions#home'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/auth/github/callback' => 'sessions#create'

  get 'most_exhibits' => 'museums#most_exhibits'

  resources :users , only: [:new, :create, :show, :edit, :update]
  resources :exhibits

  resources :users do
    resources :exhibits , only: [:show, :index, :edit]
  end

  resources :museums , only: [:show, :index] do
    resources :exhibits , only: [:show, :index, :edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
