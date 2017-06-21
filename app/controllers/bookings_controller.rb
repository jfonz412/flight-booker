class BookingsController < ApplicationController
  def new
  	@passengers = params[:passengers] # number of passengers 1-4
  	@flight = Flight.find(params[:flight])
  end
end
