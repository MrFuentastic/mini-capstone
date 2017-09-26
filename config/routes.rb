Rails.application.routes.draw do
  get '/' => 'organs#index'
  get '/organs' => 'organs#index'
  get '/organs/new' => 'organs#new'
  post '/organs' => 'organs#create'
  get '/organs/:id' => 'organs#show'
  get '/organs/:id/edit' => 'organs#edit'
  patch '/organs/:id' => 'organs#update'
  delete '/organs/:id' => 'organs#destroy'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'

  get '/images' => 'images#index'
  get '/images/new' => 'images#new'
  post '/images' => 'images#create'
  get '/images/:id' => 'images#show'
  get '/images/:id/edit' => 'images#edit'
  patch '/images/:id' => 'images#update'
  delete '/images/:id' => 'images#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/cart' => 'carted_organs#index'
  post '/cart' => 'carted_organs#create'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'
end
