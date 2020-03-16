Rails.application.routes.draw do
  resources :articles, only: [:index, :show, :create, :update, :destroy]
  resources :authors, only: [:index, :show, :create, :update, :destroy]
  resources :magazines, only: [:index, :show, :create, :update, :destroy]
  post "/post/magazines", to: "magazines#create"
  #resources :authors, only: [:index, :show, :create, :update, :destroy]

  #you can chain actions in the format above. Don't want to do this
  #until you absolutely need to. To limit exposure.
  
  #get "/authors", to: "authors:index"
  #get "/authors/:id", to: "author#show"
  #when your controller names don't match up perfectly, you need to use
  #this method instead, but in this case it's the same as using "resources"
  #because the controller name and models match up. 
end
