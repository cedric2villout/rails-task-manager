Rails.application.routes.draw do

resources :to_dos

# get "todos" to: "todos#index"
# #lire tous les todo

# get "todos/:id" to: "todos#shows"
# #lire 1 todo

# get "todos/new" to: "todos#new"
# post "todos" to: "todos#create"
# #créer une todo

# get "todos/:id/edit" => "todos#edit"
# patch "todos/:id", to: "todos#update"
# #modifier une todo

# delete  "todos/:id", to: "todos#destroy"

end
