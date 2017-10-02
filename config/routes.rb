Rails.application.routes.draw do
  get '/' => 'schools#index' 
  get '/schools' => 'schools#index'
  get '/schools/new' => 'schools#new'
  post '/schools' => 'schools#create'
  get '/schools/:id' => 'schools#show'
  get '/schools/:id/edit' => 'schools#edit'
  patch '/schools/:id' => 'schools#update'
  delete '/schools/:id' => 'schools#destroy'

  # get '/classrooms' => 'classroom#index'
  # get '/classrooms/new' => 'classroom#new'
  # post '/classrooms' => 'classroom#create'
  # get '/classrooms/:id' => 'classroom#show'
  # get '/classrooms/:id/edit' => 'classroom#edit'
  # patch '/classrooms/:id' => 'classroom#update'
  # delete '/classrooms/:id' => 'classroom#destroy'

  


end
