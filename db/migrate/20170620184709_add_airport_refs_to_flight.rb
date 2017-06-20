class AddAirportRefsToFlight < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :from_id, :integer
    add_column :flights, :to_id, :integer
  end
end
