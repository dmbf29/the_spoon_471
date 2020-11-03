Rails.application.routes.draw do
  # CRUD ROUTES
  # verb 'path', to: 'controller#action', as: :prefix
  # Read All
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  # Create
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'
  # Read One
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # Update
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'
  delete '/restaurants/:id', to: 'restaurants#destroy'
  # resources :restaurants
end

# restaurants_path
# restaurants_path, method: :post
