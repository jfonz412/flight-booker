class PassengerMailer < ApplicationMailer
	default from: 'noreply@odinflights.com'

	def thank_you_email(passenger)
		@passenger = passenger
		mail(to: @passenger.email, subject: "Thank You")
	end
end
