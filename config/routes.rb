Rails.application.routes.draw do
  get '/organs' => 'organs#index'
  get '/organs/new' => 'organs#new'
  post '/organs' => 'organs#create'
  get '/organs/:id' => 'organs#show'
end
