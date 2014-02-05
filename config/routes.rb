Accountible::Application.routes.draw do

  resources :users, :sessions	

  root to: 'site#index'
 
  get "okrs/new"
  get "okrs/create"
  get "okrs/show", to: 'okrs#show', as: :show_okr
  get "okrs/delete"
  get "okrs/my_okrs", to: 'okrs#my_okrs'
  get "okrs/:id/edit", to: 'okrs#edit', as: :edit_okr
  patch "okrs/:id/edit", to: 'okrs#update', as: :update_okr
  delete "okrs/:id/edit", to: 'okr#destroy', as: :delete_okr

  get '/signup' => 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

  get '/invite', to: 'site#invite', via: :invite
  post '/invite', to: 'site#create_invites', as: :create_invites

end
