class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :origin_id
      t.integer :destination_id
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
    add_index :flights, :origin_id
    add_index :flights, :destination_id
  end
end
