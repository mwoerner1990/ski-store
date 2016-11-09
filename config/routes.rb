Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/homepage' => 'stores#all_product_method'
  get '/atomic_vantage' => 'stores#first_product_method'
  get '/soulseven' => 'stores#second_product_method'
  get '/lineSFB' => 'stores#third_product_method'
end
