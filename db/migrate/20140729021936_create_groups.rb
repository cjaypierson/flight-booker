class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :booking_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
