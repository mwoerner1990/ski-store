Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'skis#index'
  get '/skis' => 'skis#index'
  get '/skis/new' => 'skis#new'
  post '/skis' => 'skis#create'
  get '/skis/:id/edit' => 'skis#edit'
  patch '/skis/:id' => 'skis#update'
  get '/skis/:id' => 'skis#show'
  delete 'skis/:id' => 'skis#destroy'

  #supplier

  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  get '/suppliers/:id' => 'suppliers#show'
  delete 'suppliers/:id' => 'suppliers#destroy'

end
