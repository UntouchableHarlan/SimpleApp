Rails.application.routes.draw do

  get 'users/new'

  get '/help' => 'static#help'

  get '/about' => 'static#about'
  get '/contact' => 'static#contact'
  get 'signup' => 'users#new'
  root 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
