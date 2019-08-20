Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  ######Sedentary Activities######

  get "/sedentaryactivities", to: "sedentary_activities#index", as: "sedentary_activities"
  get "/sedentaryactivities/new", to: "sedentary_activities#new", as: "new_sedentary_activity"
  get "/sedentaryactivities/:id", to: "sedentary_activities#show", as: "sedentary_activity"
  post "/sedentaryactivities", to: "sedentary_activities#create"
  get "/sedentaryactivities/:id/edit", to: "sedentary_activities#edit", as: "edit_sedentary_activity"
  patch "/sedentaryactivities/:id", to: "sedentary_activities#update"
  delete "/sedentaryactivities/:id", to: "sedentary_activities#destroy", as: "destroy_sedentary_activity"

  ######Exericses######
  get "/exercises", to: "exercises#index", as: "exercises"
  get "/exercises/new", to: "exercises#new", as: "new_exercise"
  get "/exercises/:id", to: "exercises#show", as: "exercise"
  post "/exercises", to: "exercises#create"
  get "/exercises/:id/edit", to: "exercises#edit", as: "edit_exercise"
  patch "/exercises/:id", to: "exercises#update"
  delete "/exercises/:id", to: "exercises#destroy", as: "destroy_exercise"

  ######Users######
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/:id", to: "users#show", as: "user"
  post "/users", to: "users#create"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy", as: "destroy_user"
  
  ###### Ingredients ######
  get '/ingredients', to: 'ingredients#index', as: 'ingredients'
  get '/ingredients/new', to: 'ingredients#new', as: 'new_ingredient'
  get '/ingredients/:id', to: 'ingredients#show', as: 'ingredient'
  post '/ingredients', to: 'ingredients#create'
  get '/ingredients/:id/edit', to: 'ingredients#edit', as: 'edit_ingredient'
  patch '/ingredients/:id', to: 'ingredients#update'
  delete '/ingredients/:id', to: 'ingredients#destroy'
  
  ###### Meals ######
  get '/meals', to: 'meals#index', as: 'meals'
  get '/meals/new', to: 'meals#new', as: 'new_meal'
  get '/meals/decision', to: 'meals#decision'
  get '/meals/:id', to: 'meals#show', as: 'meal'
  post '/meals', to: 'meals#create'
  get '/meals/:id/edit', to: 'meals#edit', as: 'edit_meal'
  patch '/meals/:id', to: 'meals#update'
  delete '/meals/:id', to: 'meals#destroy'
  get '/meals/new/stock', to: 'meals#stock_meal', as: 'stock_meal'

  ######Days######
  get '/days', to: 'days#index', as: 'days'
  get "/days/new", to: "days#new", as: "new_day"
  get "/days/:id", to: "days#show", as: "day"
  post "/days", to: "days#create"
  get "/days/:id/edit", to: "days#edit", as: "edit_day"
  patch "/days/:id", to: "days#update"
  delete "/days/:id", to: "days#destroy", as: "destroy_day"

  ######Sessions######
  get "/login", to: "sessions#new", as: "new_session"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy"

end
