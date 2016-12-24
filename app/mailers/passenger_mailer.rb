class PassengerMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def thank_you(user)
		@user = user
		@url = "http://localhost:3001"
		mail(to: @user.email, subject: "Thank you")
	end
end
