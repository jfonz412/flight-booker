class BookingsController < ApplicationController
  def new
  	@passengers = []
  	count = params[:passengers].to_i # number of passengers 1-4
  	count.times do |n|
  		@passengers << Passenger.new
  	end
  	@booking = Booking.new
  	@flight = Flight.find(params[:flight_id])
  end

  def create
  	redirect_to root_url
  end
end
