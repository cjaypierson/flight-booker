class Airport < ActiveRecord::Base
	has_many :flights, foreign_key: :departure_id
	has_many :departing_flights, through: :flights, source: :departure_airport 
	
	has_many :reverse_flights, foreign_key: :arrival_id, class_name: "Flight"
	has_many :arriving_flights, through: :reverse_flights, source: :arrival_airport
end
