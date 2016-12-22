class Flight < ApplicationRecord
	belongs_to :from_airport, :class_name => "Airport"
	belongs_to :to_airport, :class_name => "Airport"

	has_many :passengers, through: :bookings	
	has_many :bookings

	def self.find_flight(from, to, date)
		x = date.to_time
		Flight.where(from_airport_id: from, to_airport_id: to, start: (x)..(x + 1.day))
	end
end