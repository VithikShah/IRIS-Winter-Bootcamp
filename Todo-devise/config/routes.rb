Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "todos", to: "todos#index"
  get "todos/new", to: "todos#new"
  post "todos", to: "todos#create"
  get "todos/:id", to: "todos#show", as: :todo
  get "todos/:id/edit", to: "todos#edit", as: :edit_todo
  patch "todos/:id", to: "todos#update"
  delete "todos/:id", to: "todos#destroy", as: :delete_todo
  root to: "todos#index"
end
