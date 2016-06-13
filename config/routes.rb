Rails.application.routes.draw do

  get '/requests/new' => 'requests#new', as: :new_request
  post '/request' => 'requests#create', as: :requests

end
