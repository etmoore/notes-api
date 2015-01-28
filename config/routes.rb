Rails.application.routes.draw do

  get     '/notes'     => 'notes#index'
  post    '/notes'     => 'notes#create'
  get     '/notes/:id' => 'notes#show'
  put     '/notes/:id' => 'notes#update'
  delete  '/notes/:id' => 'notes#destroy'

end
