class RemovePassengerIdFromBookings < ActiveRecord::Migration
  def change
  	remove_column :bookings, :passenger_id, :integer
  	remove_column :passengers, :booking_id, :integer
  end
end
