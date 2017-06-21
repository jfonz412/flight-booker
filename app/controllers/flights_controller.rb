class FlightsController < ApplicationController
  def index
  	@airport_options = Airport.all.map{ |a| a.code }
  	@flight_dates = Flight.all.map{ |f| f.formatted_date }
  	@passenger_max = [1,2,3,4]
    # unless prevents find_flights from running prematurely
    unless params[:departing_from].nil?
  	 @available_flights = find_flights
    end
  end

  private
  	def find_flights
      departing_airport = Airport.find_by_code( params[:departing_from] )
      arriving_airport  = Airport.find_by_code( params[:arriving_at]    )
      Flight.where("from_id = ? AND to_id = ?", departing_airport.id, arriving_airport.id)
  	end
end
