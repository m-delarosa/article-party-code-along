Rails.application.routes.draw do
  resources :authors, only: [:index, :show]

  #resources :authors, only: [:index, :show, :create]

  #you can chain actions in the format above. Don't want to do this
  #until you absolutely need to. To limit exposure.
  
  #get "/authors", to: "authors:index"
  #get "/authors/:id", to: "author#show"

  #when your controller names don't match up perfectly, you need to use
  #this method instead, but in this case it's the same as using "resources"
  #because the controller name and models match up. 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
