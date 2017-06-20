class AddAirportToFlight < ActiveRecord::Migration[5.0]
  def change
    add_reference :flights, :airport, foreign_key: true
  end
end
