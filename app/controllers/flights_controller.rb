class FlightsController < ApplicationController
	def index
		@airports = Airport.all.map {|u| [u.shortened_name, u.id]}
		@passenger_count = [1,2,3,4]
		@dates = Flight.all.map {|u| u.start}
	end
end
