class ChangeOriginAndDestinationColumnNames < ActiveRecord::Migration
  def change
  	rename_column :flights, :origin_id, :departure_id
  	rename_column :flights, :destination_id, :arrival_id
  end
end
