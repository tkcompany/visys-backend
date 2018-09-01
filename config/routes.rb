Rails.application.routes.draw do

  resources :cylinder_types
  resources :vehicle_types
  resources :vehicles
  resources :permissions
  resources :customers
	#resources :users
	
	namespace :api do
		namespace :v1 do
				resources :customers
			end
		end

  

  #scope subdomain: 'api' do
		#scope module: 'api' do
			#namespace :v1 do
	  			#resources :customers
	  		#end
	  	#end
  #end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
