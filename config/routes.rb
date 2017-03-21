Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get    '/canvas',  	to: 'pages#canvas'
  get    '/canvas/textures',   to: 'pages#textures'
  get    '/canvas/textures/:addr',   to: 'pages#user_textures'
  get 	 '/upload', 		to: 'upload#new'
  post   '/upload',    to: 'upload#create'
  get    '/signup',   to: 'users#new'
  post   '/signup',  	to: 'users#create'
  get    '/login',   	to: 'sessions#new'
  post   '/login',   	to: 'sessions#create'
  delete '/logout',  	to: 'sessions#destroy'
  resources :users
end
