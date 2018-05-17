class ConfirmNewsletter < ApplicationMailer

	def send_confirm_newsletter(email)
		@email = email.to_s
   		mail(to: @email, subject: 'Confirm Newsletter')
   		
	end

end