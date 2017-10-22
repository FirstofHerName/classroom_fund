Rails.application.routes.draw do
  get '/' => 'schools#index' 
  get '/schools' => 'schools#index'
  get '/schools/new' => 'schools#new'
  post '/schools' => 'schools#create'
  get '/schools/:id' => 'schools#show'
  get '/schools/:id/edit' => 'schools#edit'
  patch '/schools/:id' => 'schools#update'

  get '/classrooms' => 'classrooms#index'
  get '/classrooms/new' => 'classrooms#new'
  post '/classrooms' => 'classrooms#create'
  get '/classrooms/:id' => 'classrooms#show'
  get '/classrooms/:id/edit' => 'classrooms#edit'
  patch '/classrooms/:id' => 'classrooms#update'
  delete '/classrooms/:id' => 'classrooms#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/classrooms/:classroom_id/projects' => 'projects#index'
  get '/classrooms/:classroom_id/projects/new' => 'projects#new'
  post '/classrooms/:classroom_id/projects' => 'projects#create'
  get '/classrooms/:classroom_id/projects/:id' => 'projects#show'
  get '/classrooms/:classroom_id/projects/:id/edit' => 'projects#edit'
  patch '/classrooms/:classroom_id/projects/:id' => 'projects#update'
  delete '/classrooms/:classroom_id/projects/:id' => 'projects#destroy'
  


end
