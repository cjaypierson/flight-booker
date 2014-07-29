class BookingsController < ApplicationController
	
	def new
		@booking = Booking.new(flight_id: params[:flight_id])
		params[:passengers].to_i.times { @booking.passengers.build }
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			redirect_to @booking
		else
			render 'new'
		end
	end

	def show
		@booking = Booking.find(params[:id])
		@passengers = @booking.passengers
		@flight = @booking.flight
		@from = @flight.departure_airport
		@to = @flight.arrival_airport
	end

	private

		def booking_params
			params.require(:booking).permit(:flight_id,
										 									passengers_attributes: [:name, :email])
		end
end
