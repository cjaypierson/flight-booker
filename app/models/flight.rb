class Flight < ActiveRecord::Base
	belongs_to :departure_airport, foreign_key: :departure_id, class_name: "Airport"
	belongs_to :arrival_airport, foreign_key: :arrival_id, class_name: "Airport"
	has_many :bookings
	has_many :passengers, through: :bookings
end
