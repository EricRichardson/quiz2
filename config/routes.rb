Rails.application.routes.draw do

  get '/requests/new' => 'requests#new', as: :new_request
  post '/request' => 'requests#create', as: :requests
  get '/requests/:id' => 'requests#show', as: :request
  get '/requests' => 'requests#index'

end
