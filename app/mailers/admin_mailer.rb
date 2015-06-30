class AdminMailer < ApplicationMailer
	default from: 'glowing.wight@gmail.com'	

	def new_user(user, email)
		@user = user
		@email = email

		mail(to:'nathan.a.douglas@gmail.com', subject: 'RFI')
	end
end
