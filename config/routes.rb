Rails.application.routes.draw do
	resources :airports

  get 'bookings/new'

	resources :flights

	get 'flight_list',  :to => 'flights#all' 
	root 'flights#index'

	get 'bookings_list', :to => 'bookings#all'

	resources :bookings
end