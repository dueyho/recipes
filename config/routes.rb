Recipes::Application.routes.draw do
  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('/', {:via => :get, :to => 'recipes#index'})
  match('recipes', {:via => :post, :to => 'recipes#create'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:id', {:via => :patch, :to=> 'recipes#update'})
  match('recipes/:id', {:via => :delete, :to => 'recipes#destroy'})
end
