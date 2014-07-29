class FlightsController < ApplicationController

	def index
		@departure_options = Flight.all.map{ |f| [f.departure_airport.code, f.departure_id ] }
		@arrival_options = Flight.all.map{ |f| [f.arrival_airport.code, f.arrival_id] }
		if params.has_key?(:departure_id)
			@found_flights = Flight.all.where(departure_id: params[:departure_id], arrival_id: params[:flight][:arrival_id], date: params[:flights][:date])
		end
		@booking = Booking.new
	end
end
