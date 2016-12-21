# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flight.delete_all
Airport.delete_all

airports_list = [
	["San Francisco Airport", "SFO"], 
	["California Airport", "CLA"], 
	["New York Airport", "NYC"],
	["Los Angeles Airport", "LAC"],
	["Romania Central Airport", "RCA"],
	["Portland Oregan Airport", "POA"]
]

airports_list.each do |full_name, shortened_name|
	Airport.create(full_name: full_name, shortened_name: shortened_name)
end

200.times do
	Flight.create(start: Time.now + rand(-99999..99999), duration: rand(40..1020), to_airport_id: Airport.all.sample.id, from_airport_id: Airport.all.sample.id)
end