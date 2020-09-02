Rails.application.routes.draw do
  resources :facts
  resources :trees
  resources :leafs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # nested resources TODO
  # resources:users do 
  #  resources:trees
  #end

  root to: 'pages#home'

  # Sessions routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #user homepage
  get '/user/profile', to: 'sessions#profile'

  # add/drop courses routes (see /controllers/registrations_controller.rb)
  post '/add_leaf_to_tree/:tree_id/:leaf_id', to: 'connections#add_leaf_to_tree'

end
