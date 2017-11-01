Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'home/index', to: 'pokemons#capture', as: 'capture'
  # patch 'trainers/:id', to: 'pokemons#new', as: 'new' 
  
  # get '/trainers/:id', to: 'trainers#show', as: 'train'
  get '/pokemons/new', to: 'pokemons#new', as: 'new'
  # post 'pokemons/new', to: ''
  post '/trainers/:id', to: 'pokemons#new'  # post '/pokemon/new', to: 'pokemon#create'
  post '/pokemons/new', to: 'pokemons#create', as: 'create'
  # get '/t/:id', to: 'pokemon#create', as: 'create'
  
  # patch '/trainers/:id', to: 'pokemon#new'
  
  # post '/pokemon/create', to: 'trainers#show'
end
