Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/skis' => 'skis#index'
  get '/skis/new' => 'skis#new'
  post '/skis' => 'skis#create'
  get '/skis/:id/edit' => 'skis#edit'
  patch '/skis/:id' => 'skis#update'
  get '/skis/:id' => 'skis#show'
  delete 'skis/:id' => 'skis#destroy'
end
