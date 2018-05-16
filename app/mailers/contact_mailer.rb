class ContactMailer < ApplicationMailer

	def contact

		mail(to: 'martin.berangere@live.fr', subject: 'sujet de test')
		
	end
end
