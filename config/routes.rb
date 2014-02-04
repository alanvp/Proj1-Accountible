Accountible::Application.routes.draw do

  resources :users, :sessions	

  root to: 'site#index'
 
  get "okrs/new"
  get "okrs/create"
  get "okrs/show", to: 'okrs#show', as: :show_okr
  get "okrs/delete"


  get '/signup' => 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

  get '/invite', to: 'site#invite', via: :invite

end
