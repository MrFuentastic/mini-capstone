Rails.application.routes.draw do
  get '/organs' => 'organs#index'
  get '/organs/:id' => 'organs#show'
end
