class RemoveColumnFromFlight < ActiveRecord::Migration[5.0]
  def change
  	remove_column :flights, :airport_id, :integer
  end
end
