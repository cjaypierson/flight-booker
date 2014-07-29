class AddDateColumnToFlights < ActiveRecord::Migration
  def change
  	add_column :flights, :date, :date
  	change_column :flights, :departure_time, :time 
  	change_column :flights, :departure_time, :time
  end
end
