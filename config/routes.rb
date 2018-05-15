Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'notes#index'
  get '/notes/new'
  get '/notes/create'
  
  get '/notes'  => 'notes#index'
  get '/notes/:id' => 'notes#show'
  
  get '/notes/:id/edit' => 'notes#edit'
  get '/notes_update' => 'notes#update'
  
  
  get '/notes/:id/destroy' => 'notes#destroy'
end

