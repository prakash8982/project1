class NotificationMailer < ApplicationMailer
	default from: 'sharmaprakash7415@gmail.com'

	def approve_email
		@user = params[:user]
		mail(to: @user.email, subject: "your application is approved succesfully")
	end
end
