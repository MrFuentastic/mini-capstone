Rails.application.routes.draw do
  get '/organs' => 'organs#index'
  get '/organs/new' => 'organs#new'
  post '/organs' => 'organs#create'
  get '/organs/:id' => 'organs#show'
  get '/organs/:id/edit' => 'organs#edit'
  patch '/organs/:id' => 'organs#update'
  delete '/organs/:id' => 'organs#destroy'
end
