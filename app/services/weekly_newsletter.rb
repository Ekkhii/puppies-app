class WeeklyNewsletter < ApplicationMailer

	def send_newsletter(email)
		@email = email.to_s
   		mail(to: @email, subject: 'Newsletter')
   		
	end

end

