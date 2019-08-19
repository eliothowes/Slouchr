Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Sedentary Activities

  get "/sedentaryactivities", to: "sedentary_activities#index", as: "sedentary_activities"
  get "/sedentaryactivities/new", to: "sedentary_activities#new", as: "new_sedentary_activity"
  get "/sedentaryactivities/:id", to: "sedentary_activities#show", as: "sedentary_activity"
  post "/sedentaryactivities", to: "sedentary_activities#create"
  get "/sedentaryactivities/:id/edit", to: "sedentary_activities#edit", as: "edit_sedentary_activity"
  patch "/sedentaryactivities/:id", to: "sedentary_activities#update"
  delete "/sedentaryactivities/:id", to: "sedentary_activities#destroy", as: "destroy_sedentary_activity"

  get "/exercises", to: "exercises#index", as: "exercises"
  get "/exercises/new", to: "exercises#new", as: "new_exercise"
  get "/exercises/:id", to: "exercises#show", as: "exercise"
  post "/exercises", to: "exercises#create"
  get "/exercises/:id/edit", to: "exercises#edit", as: "edit_exercise"
  patch "/exercises/:id", to: "exercises#update"
  delete "/exercises/:id", to: "exercises#destroy", as: "destroy_exercise"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/:id", to: "users#show", as: "user"
  post "/users", to: "users#create"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy", as: "destroy_user"
  
end
