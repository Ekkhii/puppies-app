desc "Envoi de Newsletter"
task newsletter: :environment do
	
	def send_newsletter(email)
		@email = email.to_s
   		mail(to: @email, subject: 'Newsletter')
   		
	end
	send_newsletter

end