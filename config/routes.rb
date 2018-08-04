Rails.application.routes.draw do

  resources :permissions
  resources :customers
  #resources :users

  #scope subdomain: 'api' do
	  #resources :sms
		#scope module: 'api' do
			#namespace :v1 do
	  			#resources :messages
	  		#end
	  	#end
  #end

  scope subdomain: 'api' do
		scope module: 'api' do
			namespace :v1 do
	  			resources :customers
	  		end
	  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
