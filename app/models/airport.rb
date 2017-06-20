class Airport < ApplicationRecord
	# Needs a migration for indexes and references(?)
	has_many :departing_flights, class_name:  "Flight",
								 foreign_key: "from_id"
	has_many :arriving_flights,  class_name:  "Flight",
								 foreign_key: "to_id"
end
