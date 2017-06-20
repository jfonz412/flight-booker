class RemoveColumnsFromFlight < ActiveRecord::Migration[5.0]
  def change
  	remove_column :flights, :departing_id, :integer
  	remove_column :flights, :arriving_id,  :integer
  end
end
