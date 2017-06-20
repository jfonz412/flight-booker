class FlightsController < ApplicationController
  def index
  	@airport_options = Airport.all.map{ |a| a.code }
  	@flight_dates = Flight.all.map{ |f| f.formatted_date }
  	@passenger_max = [1,2,3,4]

  	@available_flights = find_flights
  end

  private
  	def find_flights
  		available_flights = []
  		departures = Flight.all.map do |f|
  			if f.from_airport.code == params[:departing_from] && f.to_airport.code == params[:arriving_at]
  				available_flights << f
  			end
  		end
  	end
end
