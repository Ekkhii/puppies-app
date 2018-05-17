class ContactMailer < ApplicationMailer

	def contact

		puts 'je suis dans contact_mailer.rb'
		puts params.inspect

		mail(to: 'martin.berangere0@gmail.com', subject: 'sujet de test')
		
	end
end
