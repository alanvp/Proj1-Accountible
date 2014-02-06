Accountible::Application.routes.draw do

  resources :users, :sessions	

  root to: 'site#index'
 
  

  get "/okrs/show", to: 'okrs#show', as: :show_okr
  get "/okrs/new", to: 'okrs#new', as: :new_okr

  get "/okrs/my_okrs", to: 'okrs#my_okrs', as: :my_okrs
  get "/okrs/:id/edit", to: 'okrs#edit', as: :edit_okr
  post "/okrs/create", to: 'okrs#create', as: :create_okr
  patch "/okrs/:id/edit", to: 'okrs#update', as: :update_okr
  delete "/okrs/:id/delete", to: 'okrs#destroy', as: :delete_okr

  get '/signup' => 'users#new'
  get '/signup/:id/new_teammate' => 'users#new_teammate'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

  get '/invite', to: 'site#invite', via: :invite
  post '/invite', to: 'site#create_invites', as: :create_invites

  get "/todos/my_todos", to: 'todos#my_todos', as: :my_todos
  get "/todos/new", to: 'todos#new', as: :new_todo
  get "/todos/:id/edit", to: 'todos#edit', as: :edit_todo
  post "/todos/create", to: 'todos#create', as: :create_todo
  patch "/todos/:id/edit", to: 'todos#update', as: :update_todo
end
