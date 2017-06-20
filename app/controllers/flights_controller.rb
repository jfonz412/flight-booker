class FlightsController < ApplicationController
  def index
  	@airport_options = Airport.all.map{ |a| a.code }
  	@flight_dates = Flight.all.map{ |f| f.formatted_date }
  	@passenger_max = [1,2,3,4]
  end
end
