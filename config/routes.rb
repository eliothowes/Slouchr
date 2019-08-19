Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

###### Ingredients ######
get '/ingredients', to: 'ingredients#index', as: 'ingredients'
get '/ingredients/:id', to: 'ingredients#show', as: 'ingredient'

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

end
