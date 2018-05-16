class ContactMailer < ApplicationMailer

	def contact

		mail(to: 'martin.berangere0@gmail.com', subject: 'sujet de test')
		
	end
end
