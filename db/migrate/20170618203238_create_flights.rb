class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :departing_id
      t.integer :arriving_id
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end
