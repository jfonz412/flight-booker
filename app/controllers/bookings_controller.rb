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
  	booking = Booking.new(flight_id: params[:flight_id].to_i)
  	booking.save
	  params[:booking][:passenger].each do |passenger|
	  	booking.passengers.create(name: passenger[:name], email: passenger[:email])
	  end
  end

  private
  	def booking_params
  		params.require(:booking).permit(:flight_id, passenger: [:name, :email])
  	end
end
