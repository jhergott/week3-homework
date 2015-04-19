Rails.application.routes.draw do

  # Put your routes here
  get '/places/new' => 'places#new'
  get '/places/create' => 'places#create'

  get '/places/:id/edit' => 'places#edit'
  get '/places/:id/update' => 'places#update'

  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  get '/places/:id/delete' => 'places#delete'
  
  

end
