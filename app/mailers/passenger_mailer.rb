class PassengerMailer < ApplicationMailer
	default from: 'noreply@odinflights.com'
	
	def thank_you_email(user)
		@user = user
		mail(to: @user.email, subject: "Thank You")
	end
end
