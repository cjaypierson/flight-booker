class Passenger < ActiveRecord::Base
	has_many :groups
	has_many :bookings, through: :groups
	has_many :flights, through: :bookings
end
