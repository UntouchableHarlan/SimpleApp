Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get 'users/new'

  get '/help' => 'static#help'

  get '/about' => 'static#about'
  get '/contact' => 'static#contact'
  get 'signup' => 'users#new'
  post '/signup' => 'users#create'
  root 'static#home'
  
  resources :account_activations, only: [:edit]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
